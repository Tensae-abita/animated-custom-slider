import 'package:flutter/animation.dart';

/// One tagged segment of animation: [begin] -> [end] between [from] and [to]
/// on the shared timeline. Outside that range the value holds steady.
class SequenceItem {
  final String tag;
  final double begin;
  final double end;
  final Duration from;
  final Duration to;
  final Curve curve;

  SequenceItem({
    required this.tag,
    required this.begin,
    required this.end,
    required this.from,
    required this.to,
    this.curve = Curves.linear,
  });
}

/// Drop-in replacement for flutter_sequence_animation's SequenceAnimation:
/// access a tagged track with sequenceAnimation['tag'].value
class TaggedSequenceAnimation {
  final Map<String, Animation<double>> _animations;
  TaggedSequenceAnimation(this._animations);

  Animation<double> operator [](String tag) {
    final anim = _animations[tag];
    assert(anim != null, 'No animation registered for tag "$tag"');
    return anim!;
  }
}

/// Builds a TaggedSequenceAnimation from a flat list of tagged segments,
/// all driven by [controller] over [totalDuration].
TaggedSequenceAnimation buildSequenceAnimation({
  required AnimationController controller,
  required Duration totalDuration,
  required List<SequenceItem> items,
}) {
  final Map<String, List<SequenceItem>> byTag = {};
  for (final item in items) {
    byTag.putIfAbsent(item.tag, () => []).add(item);
  }

  final int totalMs = totalDuration.inMilliseconds;
  final Map<String, Animation<double>> animations = {};

  byTag.forEach((tag, segments) {
    segments
        .sort((a, b) => a.from.inMilliseconds.compareTo(b.from.inMilliseconds));

    final List<TweenSequenceItem<double>> tweenItems = [];
    int cursor = 0;
    double lastEnd = segments.first.begin;

    for (final seg in segments) {
      final int fromMs = seg.from.inMilliseconds;
      final int toMs = seg.to.inMilliseconds;

      if (fromMs > cursor) {
        final double holdValue = tweenItems.isEmpty ? seg.begin : lastEnd;
        tweenItems.add(TweenSequenceItem(
          tween: ConstantTween<double>(holdValue),
          weight: (fromMs - cursor).toDouble(),
        ));
      }

      final int segMs = toMs - fromMs;
      tweenItems.add(TweenSequenceItem(
        tween: Tween<double>(begin: seg.begin, end: seg.end)
            .chain(CurveTween(curve: seg.curve)),
        weight: segMs > 0 ? segMs.toDouble() : 1.0,
      ));

      lastEnd = seg.end;
      cursor = toMs;
    }

    if (cursor < totalMs) {
      tweenItems.add(TweenSequenceItem(
        tween: ConstantTween<double>(lastEnd),
        weight: (totalMs - cursor).toDouble(),
      ));
    }

    animations[tag] = TweenSequence<double>(tweenItems).animate(controller);
  });

  return TaggedSequenceAnimation(animations);
}
