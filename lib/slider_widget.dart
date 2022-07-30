import 'dart:ui' as ui;

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:sania/app_bar.dart';
import 'dart:math' as Math;


import 'package:sania/body.dart';
import 'package:sania/bottom_nav.dart';

class Slider_Widget extends StatefulWidget {

  final double ultimateHeight;
  final double ultimateWidth;
  
  Slider_Widget({
  required this.ultimateHeight,
   required this.ultimateWidth,
  }
  );

  @override
  State<Slider_Widget> createState() => _Slider_WidgetState();
}

class _Slider_WidgetState extends State<Slider_Widget> {
  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Slider(
        ultimateHeight:widget.ultimateHeight,
        ultimateWidth: widget.ultimateWidth,
      ),
    );
  }
}

class Slider extends StatefulWidget {
  
  final double height;
  
  final double ultimateHeight;
    final double ultimateWidth;

  Slider({this.height=50, required this.ultimateHeight, required this.ultimateWidth}) ;

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> with TickerProviderStateMixin {
   
GlobalKey _widgetKey = GlobalKey();

  late AnimationController _animationController;
  late AnimationController _controller;
 late  Animation _sliderAnimation;
 late var sequenceAnimation;

 late double animBegin;
 late double animENd;
 bool originalpos=true;
 bool  doubletap=false;
@override
  void initState() {
    // TODO: implement initState

    super.initState();

    
    animBegin=widget.ultimateHeight*0.78;
    animENd=widget.ultimateHeight*0.78;
     _dragPosition=Offset(widget.ultimateWidth*0.4,widget.ultimateHeight*0.78);
    _dragPercentage=2.5;
      
   _startStingAnimation();
    
    

 _animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 5));

_initAnimation();
    
  }


 void _initAnimation(){
  _sliderAnimation=Tween(
    begin: animBegin,
    end: animENd
  ) .animate(_animationController)..addListener(() {
    setState(() {
      
    });
  });
 }
   void _animationOnTap(){
    _controller = AnimationController(vsync: this);
    sequenceAnimation = SequenceAnimationBuilder()

    .addAnimatable(
      animatable: Tween(begin: 17.0,end: 15.0),
      from: Duration(milliseconds: 0),
      to: Duration(milliseconds:500),
      tag: 'raduis'

    ).addAnimatable(  
      animatable: Tween(begin: 0.0,end: 0.0),
      from: Duration(milliseconds:0),
      to: Duration(milliseconds: 500),
      tag: 'angle'

    ).addAnimatable(
      animatable: Tween(begin: 0.0,end: 0.0),
      from: Duration(milliseconds:2000),
      to: Duration(milliseconds: 2200),
      tag: 'angle'

    )
   
      .addAnimatable(
      animatable: Tween(begin: 15.0,end: 17.0),
      from: Duration(milliseconds:500),
      to: Duration(milliseconds: 1000),
      tag: 'raduis'

    ).addAnimatable(animatable: Tween(begin:1.0,end: 1.0),
     from: Duration(milliseconds: 0), 
     to: Duration(milliseconds: 500),
      tag: 'opacity')

      .addAnimatable(animatable: Tween(begin:1.0,end: 1.0),
     from: Duration(milliseconds: 2000), 
     to: Duration(milliseconds: 2200),
      tag: 'opacity')
       .addAnimatable(
      animatable: Tween(begin: 17.0,end: 17.0),
      from: Duration(milliseconds:2000),
      to: Duration(milliseconds: 2200),
      tag: 'raduis'

    ) .addAnimatable(
      animatable: Tween(begin: 0.0415,end: 0.16),
      from: Duration(milliseconds:0),
      to: Duration(milliseconds: 1500),
      tag: 'number_height'

    ) .addAnimatable(
      animatable: Tween(begin: 0.1,end: 0.0415),
      from: Duration(milliseconds:1500),
      to: Duration(milliseconds: 1600),
      tag: 'number_height'

    )
    .addAnimatable(
      animatable: Tween(begin: 0.11,end: 0.18),
      from: Duration(milliseconds:0),
      to: Duration(milliseconds: 300),
      tag: 'number_width'

    )
    .addAnimatable(
      animatable: Tween(begin: 0.18,end: 0.11),
      from: Duration(milliseconds:300),
      to: Duration(milliseconds: 600),
      tag: 'number_width'

    ).addAnimatable(
      animatable: Tween(begin: 0.11,end: 0.18),
      from: Duration(milliseconds:600),
      to: Duration(milliseconds: 1200),
      tag: 'number_width'

    )
    .addAnimatable(
      animatable: Tween(begin: 0.18,end: 0.11),
      from: Duration(milliseconds:1200),
      to: Duration(milliseconds: 1500),
      tag: 'number_width'

    ).addAnimatable(
      animatable: Tween(begin: 11.0,end:28.0),
      from: Duration(milliseconds:0),
      to: Duration(milliseconds: 1500),
      tag: 'font_size'

    ).addAnimatable(
      animatable: Tween(begin: 1.0,end:0.9),
      from: Duration(milliseconds:0),
      to: Duration(milliseconds: 1500),
      tag: 'fontOpacity'

    ).addAnimatable(
      animatable: Tween(begin: 0.9,end:0.0),
      from: Duration(milliseconds: 1500),
      to: Duration(milliseconds: 2000),
      tag: 'fontOpacity'

    )
    .addAnimatable(
      animatable: Tween(begin: 0.0,end:1.0),
      from: Duration(milliseconds:2000),
      to: Duration(milliseconds: 2200),
      tag: 'fontOpacity'

    )
    .addAnimatable(
      animatable: Tween(begin: 28.0,end:11.0),
      from: Duration(milliseconds:1500),
      to: Duration(milliseconds: 1600),
      tag: 'font_size'

    ).animate(_controller);

   }
void _startStingAnimation(){
   _controller = AnimationController(vsync: this);
    sequenceAnimation = SequenceAnimationBuilder()
   .addAnimatable(
      animatable: Tween(begin: 17.0,end: 40.0),
      from: Duration(milliseconds: 0),
      to: Duration(milliseconds:500),
      tag: 'raduis'

    ).addAnimatable(
      animatable: Tween(begin: 0.0,end: 0.3),
      from: Duration(milliseconds:0),
      to: Duration(milliseconds: 500),
      tag: 'angle'

    ).addAnimatable(
      animatable: Tween(begin: 0.3,end: 0.0),
      from: Duration(milliseconds:2000),
      to: Duration(milliseconds: 2200),
      tag: 'angle'

    )
   
      .addAnimatable(
      animatable: Tween(begin: 40.0,end: 17.0),
      from: Duration(milliseconds:500),
      to: Duration(milliseconds: 1000),
      tag: 'raduis'

    ).addAnimatable(animatable: Tween(begin:1.0,end: 0.0),
     from: Duration(milliseconds: 0), 
     to: Duration(milliseconds: 500),
      tag: 'opacity')

      .addAnimatable(animatable: Tween(begin:0.0,end: 1.0),
     from: Duration(milliseconds: 2000), 
     to: Duration(milliseconds: 2200),
      tag: 'opacity')
       .addAnimatable(
      animatable: Tween(begin: 0.0,end: 17.0),
      from: Duration(milliseconds:2000),
      to: Duration(milliseconds: 2200),
      tag: 'raduis'

    ) .addAnimatable(
      animatable: Tween(begin: 0.0415,end: 0.16),
      from: Duration(milliseconds:0),
      to: Duration(milliseconds: 1500),
      tag: 'number_height'

    ) .addAnimatable(
      animatable: Tween(begin: 0.1,end: 0.0415),
      from: Duration(milliseconds:1500),
      to: Duration(milliseconds: 1600),
      tag: 'number_height'

    )
    .addAnimatable(
      animatable: Tween(begin: 0.11,end: 0.18),
      from: Duration(milliseconds:0),
      to: Duration(milliseconds: 300),
      tag: 'number_width'

    )
    .addAnimatable(
      animatable: Tween(begin: 0.18,end: 0.11),
      from: Duration(milliseconds:300),
      to: Duration(milliseconds: 600),
      tag: 'number_width'

    ).addAnimatable(
      animatable: Tween(begin: 0.11,end: 0.18),
      from: Duration(milliseconds:600),
      to: Duration(milliseconds: 1200),
      tag: 'number_width'

    )
    .addAnimatable(
      animatable: Tween(begin: 0.18,end: 0.11),
      from: Duration(milliseconds:1200),
      to: Duration(milliseconds: 1500),
      tag: 'number_width'

    ).addAnimatable(
      animatable: Tween(begin: 11.0,end:28.0),
      from: Duration(milliseconds:0),
      to: Duration(milliseconds: 1500),
      tag: 'font_size'

    ).addAnimatable(
      animatable: Tween(begin: 1.0,end:0.9),
      from: Duration(milliseconds:0),
      to: Duration(milliseconds: 1500),
      tag: 'fontOpacity'

    ).addAnimatable(
      animatable: Tween(begin: 0.9,end:0.0),
      from: Duration(milliseconds: 1500),
      to: Duration(milliseconds: 2000),
      tag: 'fontOpacity'

    )
    .addAnimatable(
      animatable: Tween(begin: 0.0,end:1.0),
      from: Duration(milliseconds:2000),
      to: Duration(milliseconds: 2200),
      tag: 'fontOpacity'

    )
    .addAnimatable(
      animatable: Tween(begin: 28.0,end:11.0),
      from: Duration(milliseconds:1500),
      to: Duration(milliseconds: 1600),
      tag: 'font_size'

      )
    .animate(_controller);
}

  
   
  late  Offset _dragPosition;
  late  double _dragPercentage;
    bool isDragging=false;
    

   void _UpdateDragPosion(Offset val){
    double newDragPosition=0;
    if(val.dx <= widget.ultimateWidth*0.22){
      newDragPosition=widget.ultimateWidth*0.22;
    } else if(val.dx >= MediaQuery.of(context).size.width*0.90){
      newDragPosition=MediaQuery.of(context).size.width*0.90;
    }else{
      newDragPosition=val.dx;
    }

    setState(() {
      _dragPosition=Offset(newDragPosition, val.dy) ;
      if(newDragPosition>widget.ultimateWidth*0.22 &&newDragPosition<widget.ultimateWidth*0.29){
          _dragPercentage=0.5;
      } else if(newDragPosition>widget.ultimateWidth*0.29 &&newDragPosition<widget.ultimateWidth*0.36){
        _dragPercentage=1.0;
      }else if(newDragPosition>widget.ultimateWidth*0.36 &&newDragPosition<widget.ultimateWidth*0.43){
        _dragPercentage=1.5;
      }else if(newDragPosition>widget.ultimateWidth*0.43 &&newDragPosition<widget.ultimateWidth*0.50){
        _dragPercentage=2.0;
      }else if(newDragPosition>widget.ultimateWidth*0.50 &&newDragPosition<widget.ultimateWidth*0.57){
        _dragPercentage=2.5;
      }else if(newDragPosition>widget.ultimateWidth*0.57 &&newDragPosition<widget.ultimateWidth*0.64){
        _dragPercentage=3.0;
      }else if(newDragPosition>widget.ultimateWidth*0.64 &&newDragPosition<widget.ultimateWidth*0.71){
        _dragPercentage=3.5;
      }else if(newDragPosition>widget.ultimateWidth*0.71 &&newDragPosition<widget.ultimateWidth*0.79){
        _dragPercentage=4.0;
      }else if(newDragPosition>widget.ultimateWidth*0.79 &&newDragPosition<widget.ultimateWidth*0.86){
        _dragPercentage=4.5;
      }else if(newDragPosition>widget.ultimateWidth*0.86 &&newDragPosition<widget.ultimateWidth*0.90){
        _dragPercentage=5.0;
      }
      
    });
   }

   late var widgetPosition;
void _getWidgetInfo() {
    final RenderBox renderBox = _widgetKey.currentContext?.findRenderObject() as RenderBox;
 
    final Size size = renderBox.size; // or _widgetKey.currentContext?.size
    // print('Size: ${size.width}, ${size.height}');
 
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    // print('Offset: ${offset.dx}, ${offset.dy}');
    // print('Position: ${(offset.dx + size.width) / 2}, ${(offset.dy + size.height) / 2}');
    widgetPosition=offset.dy;
  }

  void _onDragUpdate(BuildContext context, DragUpdateDetails update){
    RenderBox? box= context.findRenderObject() as RenderBox?;
    Offset offset= box!.globalToLocal(update.globalPosition);
    
    _UpdateDragPosion(offset);
     setState(() {
        _dragPosition=Offset(offset.dx -widget.ultimateWidth*0.155, offset.dy);
         getRotation();
           isDragging=true;
    });
    _getWidgetInfo();
  }

   void _onDragStart(BuildContext context, DragStartDetails start){
    RenderBox? box= context.findRenderObject() as RenderBox?;
    Offset offset= box!.globalToLocal(start.globalPosition);
    _UpdateDragPosion(offset);
    setState(() { 
       _dragPosition=Offset(offset.dx -widget.ultimateWidth*0.155, offset.dy);
       isDragging=true;
    });
   
      




    setState(() {
      
      GetContainerBack=true;
    });
  }
// animation after end of drag
// animation after end of drag
// animation after end of drag
// animation after end of drag
var emojiPlace;
bool emoji=true;

   void _onDragEnd(BuildContext context, DragEndDetails end){
    PlayAudio();
    _getWidgetInfo();
     emoji=false;
     emojiPlace= _dragPosition.dy-widget.ultimateHeight*0.024 -(widgetPosition-widget.ultimateHeight*0.75);
     animBegin=widget.ultimateHeight *0.66;
    animENd= widget.ultimateHeight *0.95;
    _startStingAnimation();
  
    _initAnimation();
      _animationController.forward();
    
    TickerFuture tickerFuture = _animationController.repeat();
    tickerFuture.timeout(Duration(milliseconds:1600), onTimeout:  () {
      
     originalpos=false;
      // _animationController.stop(canceled: true); 
    });
originalpos=true;
    setState(() {
      isDragging=false;
      GetContainerBack=false;
    });
    _controller.forward();
Future.delayed(Duration(milliseconds:1500), () {
  // Do something

    setState(() {
      emojiPlace=_dragPosition.dy-widget.ultimateHeight*0.024;
      emoji=true;
      _dragPosition=Offset(widget.ultimateWidth*0.4, widget.ultimateHeight *0.78) ;
      _dragPercentage=2.5;
    

      
   
    });
    });
    
     
   
  }
   void _UpdateDragPosionCanvas(Offset val){
    double newDragPosition=0;
    if(val.dx <= widget.ultimateWidth*0.22){
      newDragPosition=widget.ultimateWidth*0.22;
    } else if(val.dx >= MediaQuery.of(context).size.width*0.90){
      newDragPosition=MediaQuery.of(context).size.width*0.90;
    }else{
      newDragPosition=val.dx;
    }

    setState(() {
      _dragPosition=Offset(newDragPosition, val.dy) ;
      if(newDragPosition>widget.ultimateWidth*0.75 &&newDragPosition<widget.ultimateWidth*0.90){
          _dragPercentage=5.0;
      } else if(newDragPosition>widget.ultimateWidth*0.20 &&newDragPosition<widget.ultimateWidth*0.23){
        _dragPercentage=0.5;
      }else if(newDragPosition>widget.ultimateWidth*0.24 &&newDragPosition<widget.ultimateWidth*0.26){
        _dragPercentage=1.0;
      }else if(newDragPosition>widget.ultimateWidth*0.27 &&newDragPosition<widget.ultimateWidth*0.31){
        _dragPercentage=1.5;
      }else if(newDragPosition>widget.ultimateWidth*0.32 &&newDragPosition<widget.ultimateWidth*0.35){
        _dragPercentage=2.0;
      }else if(newDragPosition>widget.ultimateWidth*0.36 &&newDragPosition<widget.ultimateWidth*0.39){
        _dragPercentage=2.5;
      }else if(newDragPosition>widget.ultimateWidth*0.40 &&newDragPosition<widget.ultimateWidth*0.55){
        _dragPercentage=3.0;
      }else if(newDragPosition>widget.ultimateWidth*0.56 &&newDragPosition<widget.ultimateWidth*0.62){
        _dragPercentage=3.5;
      }else if(newDragPosition>widget.ultimateWidth*0.63 &&newDragPosition<widget.ultimateWidth*0.68){
        _dragPercentage=4.0;
      }else if(newDragPosition>widget.ultimateWidth*0.69 &&newDragPosition<widget.ultimateWidth*0.75){
        _dragPercentage=4.5;
      }
      
    });
   }
_onDoubleTap(){
  
    doubletap=true;
     if(doubletap){

     
    _UpdateDragPosionCanvas(_doubleTapDetails.localPosition);
    
      animBegin=widget.ultimateHeight *0.65;
    animENd= widget.ultimateHeight *0.96;
    _startStingAnimation();
    
    _initAnimation();
    PlayAudio();
      _animationController.forward();
    
    TickerFuture tickerFuture = _animationController.repeat();
    tickerFuture.timeout(Duration(milliseconds:1600), onTimeout:  () {
      
     originalpos=false;
      // _animationController.stop(canceled: true); 
    });
originalpos=true;
    setState(() {
      isDragging=false;
      GetContainerBack=false;
    });
    _controller.forward();

    setState(() {
        _dragPosition=Offset(_doubleTapDetails.localPosition.dx ,  widget.ultimateHeight *0.78);
        
    });

Future.delayed(Duration(milliseconds:1500), () {
  // Do something

    setState(() {
      _dragPosition=Offset(widget.ultimateWidth*0.4, widget.ultimateHeight *0.78) ;
      _dragPercentage=2.5;
      doubletap=false;
    
    });
    });}
  
}
  // animation after end of drag
// animation after end of drag
// animation after end of drag
// animation after end of drag
bool GetContainerBack=false;
  getRotation(){
    double angle=0;
  if(GetContainerBack){
  
     if(_dragPosition.dy>widget.ultimateHeight*0.81 || _dragPosition.dy<widget.ultimateHeight*0.76 ){
     
      setState(() {
        
        angle=(_dragPosition.dx /1000)-0.16;
       
      });
      
        
     }else {
     
      setState(() {
       
        angle=-(_dragPosition.dx /1000)+0.16;
        
      });
     }
      
  }
    

    return angle;
  }
 void _onDragUpdateContainer(BuildContext context, DragUpdateDetails update){
    RenderBox? box= context.findRenderObject() as RenderBox?;
    Offset offset= box!.globalToLocal(update.globalPosition);
      _getWidgetInfo();
    _UpdateDragPosion(offset);
     setState(() {
        _dragPosition=Offset(offset.dx -widget.ultimateWidth*0.155,  widgetPosition+widget.ultimateHeight*0.03);
         getRotation();
           isDragging=true;
         
    });
    
  }

  void _onDragStartContianer(BuildContext context, DragStartDetails start){
    RenderBox? box= context.findRenderObject() as RenderBox?;
    Offset offset= box!.globalToLocal(start.globalPosition);
    _UpdateDragPosion(offset);
    _getWidgetInfo();
    if(doubletap==false){
 setState(() { 
       _dragPosition=Offset(offset.dx -widget.ultimateWidth*0.155,widgetPosition+widget.ultimateHeight*0.03);
       isDragging=true;
    });
 setState(() {
      
      GetContainerBack=true;
    });
    }
   
  }
 
 
   void _onDragEndContainer(BuildContext context, DragEndDetails end){
    PlayAudio();
    if(doubletap==false){
 animBegin=widget.ultimateHeight *0.65;
    animENd= widget.ultimateHeight *0.96;
    _startStingAnimation();
  
    _initAnimation();
      _animationController.forward();
    
    TickerFuture tickerFuture = _animationController.repeat();
    tickerFuture.timeout(Duration(milliseconds:1600), onTimeout:  () {
      
     originalpos=false;
      // _animationController.stop(canceled: true); 
    });
originalpos=true;
    setState(() {
      isDragging=false;
      GetContainerBack=false;
    });
    _controller.forward();
Future.delayed(Duration(milliseconds:1500), () {
  // Do something

    setState(() {
      _dragPosition=Offset(widget.ultimateWidth*0.4, widget.ultimateHeight *0.78) ;
      _dragPercentage=2.5;
    
    });
    });
    }
    
    
     
   
  }

  void _onDoubleTapContainer(){
    PlayAudio();
     doubletap=true;
     if(doubletap){

     
    _UpdateDragPosion(_doubleTapDetails.localPosition);
      animBegin=widget.ultimateHeight *0.65;
    animENd= widget.ultimateHeight *0.96;
    _startStingAnimation();
  
    _initAnimation();
      _animationController.forward();
    
    TickerFuture tickerFuture = _animationController.repeat();
    tickerFuture.timeout(Duration(milliseconds:1600), onTimeout:  () {
      
     originalpos=false;
      // _animationController.stop(canceled: true); 
    });
originalpos=true;
    setState(() {
      isDragging=false;
      GetContainerBack=false;
    });
    _controller.forward();

    setState(() {
        _dragPosition=Offset(_doubleTapDetails.localPosition.dx -widget.ultimateWidth*0.155,  widget.ultimateHeight *0.78);
        
    });

Future.delayed(Duration(milliseconds:1500), () {
  // Do something

    setState(() {
      _dragPosition=Offset(widget.ultimateWidth*0.4, widget.ultimateHeight *0.78) ;
      _dragPercentage=2.5;
      doubletap=false;
    
    });
    });}
    
  }
  // get taped place 
          late TapDownDetails _doubleTapDetails;

        void _handleDoubleTapDown(TapDownDetails details) {
          _doubleTapDetails = details;
         
        }
         late TapUpDetails _singleTapDetails;
        void _onTapUp(TapUpDetails details){
         _singleTapDetails= details;
        }

   // get taped place 


//play audio   
void PlayAudio(){

final player = AudioPlayer();
player.setVolume(0.14);
if(_dragPercentage>=4.0){
  
    player.play(AssetSource('sounds/sound_for_rating_between_2.0_to_3.5.mp3')); 
}else if (_dragPercentage>=2.0 && _dragPercentage<=3.5){
    player.play(AssetSource('sounds/sound_for_rating_between_2.0_to_3.5.mp3')); 
}else if (_dragPercentage<=1.5 ){
    player.play(AssetSource('sounds/below_1.5_sound.mp3')); 
}
   
}


late var LongPress;


_onlongPressEnd(LongPressEndDetails details){
PlayAudio();
_UpdateDragPosion(details.localPosition);
 doubletap=true;

     if(doubletap==true){

_animationOnTap();
  
    
    _controller.forward();
setState(() {
        _dragPosition=Offset(details.localPosition.dx -widget.ultimateWidth*0.155,  widget.ultimateHeight *0.78);
        
    });
    Future.delayed(Duration(milliseconds:1500), () {
  // Do something

    setState(() {
      _dragPosition=Offset(widget.ultimateWidth*0.4, widget.ultimateHeight *0.78) ;
      _dragPercentage=2.5;
      doubletap=false;
    
    });
    });

    
     } 
}

_onLongpressUpdate(LongPressMoveUpdateDetails details){
 
_UpdateDragPosion(details.localPosition);

    setState(() {
        _dragPosition=Offset(details.localPosition.dx -widget.ultimateWidth*0.155, widget.ultimateHeight *0.78);
         getRotation();
           
    });
}
  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
           Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Appbar())),
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: widget.ultimateHeight-(widget.ultimateHeight*0.1),
                    ),
                  
                       
                    
                      
                    
                      
                    Positioned(
                     left:!GetContainerBack? widget.ultimateWidth*0.4- widget.ultimateWidth*0.415:_dragPosition.dx-widget.ultimateWidth*0.415,
                     top:!GetContainerBack? widget.ultimateHeight *0.78 - widget.ultimateHeight*0.72:(_dragPosition.dy-(widgetPosition-widget.ultimateHeight*0.75))-widget.ultimateHeight*0.72,
                     
                      child: Transform.rotate(
                        angle:getRotation() ,
                         
                       child: GestureDetector(
                           onHorizontalDragUpdate: (DragUpdateDetails update) => _onDragUpdateContainer(context, update),
                           onHorizontalDragStart: (DragStartDetails start) => _onDragStartContianer(context,start),
                           onHorizontalDragEnd: (DragEndDetails end)=> _onDragEndContainer(context , end),
                           onDoubleTap: ()=>_onDoubleTapContainer(),
                           onDoubleTapDown: _handleDoubleTapDown,
                           onTapUp: (TapUpDetails details) => _onTapUp(details),
                           onLongPressEnd: (LongPressEndDetails longpressend)=>_onlongPressEnd(longpressend),
                           onLongPressMoveUpdate: (LongPressMoveUpdateDetails move)=>_onLongpressUpdate(move),
                         child: Column(
                           children: [
                             body(),
                              
                           ],
                         ),
                       ))),
                      //  Positioned(
                      //   top: widget.ultimateHeight*0.06,
          
                        
                      //    child: GestureDetector(
                      //      child: Opacity(
                      //       opacity: 0.0,
                      //        child: Container(
                      //         height: widget.ultimateHeight*0.66,
                      //         width: widget.ultimateWidth,
                      //         color: Colors.blue,
                      //        ),
                      //      ),
                      //      onHorizontalDragUpdate: (DragUpdateDetails update) => _onDragUpdateContainer(context, update),
                      //      onHorizontalDragStart: (DragStartDetails start) => _onDragStartContianer(context,start),
                      //      onHorizontalDragEnd: (DragEndDetails end)=> _onDragEndContainer(context , end),
                      //      onDoubleTap: ()=>_onDoubleTapContainer(),
                      //      onDoubleTapDown: _handleDoubleTapDown,
                      //      onTapUp: (TapUpDetails details) => _onTapUp(details),
                      //      onLongPressEnd: (LongPressEndDetails longpressend)=>_onlongPressEnd(longpressend),
                      //      onLongPressMoveUpdate: (LongPressMoveUpdateDetails move)=>_onLongpressUpdate(move),
                      //    ),
                      //  ),
                         Positioned(
                      left: _dragPosition.dx + widget.ultimateWidth*0.10,
                      top:isDragging? _dragPosition.dy-widget.ultimateHeight*0.024 -(widgetPosition-widget.ultimateHeight*0.75):emoji? _dragPosition.dy-widget.ultimateHeight*0.024:emojiPlace,
                      child: AnimatedBuilder(
                        animation: _controller,
                        builder: (context,child){
                          return  Transform.rotate(
                            angle: sequenceAnimation['angle'].value,
                            child: CircleAvatar(
                            radius: sequenceAnimation['raduis'].value,
                            backgroundColor: Color(0XFFF2F2F2),
                            child:Image.asset('assets/images/emoji.png'),),
                          );
                        }
                        
                      )),
                 
                    Positioned(
                      top: widget.ultimateHeight*0.73,
                      left: widget.ultimateWidth*0.14,
                      child: GestureDetector(
                        child: Container(
                          height: 80,
                          // color: Colors.blue,
                          key: _widgetKey,
                          width:widget.ultimateWidth*0.82,
                          
                         
                          child: CustomPaint(
                            
                            painter: WavePainter(
                              widgetPosiion: isDragging?widgetPosition-widget.ultimateHeight*0.75:0,
                              isDragging: isDragging,
                              heights: widget.ultimateHeight,
                              widths: widget.ultimateWidth,
                              sliderPosition: isDragging? _dragPosition:Offset(_dragPosition.dx   ,originalpos ? _sliderAnimation.value:_dragPosition.dy), 
                              dragPercentage: _dragPercentage,
                              color: Color(0XFFF2F2F2),
                            
                              )
                          ),
                        ),
                         onHorizontalDragUpdate: (DragUpdateDetails update) => _onDragUpdate(context, update),
                        onHorizontalDragStart: (DragStartDetails start) => _onDragStart(context,start),
                        onHorizontalDragEnd: (DragEndDetails end)=> _onDragEnd(context , end),
                         onDoubleTap: ()=>_onDoubleTap(),
                           onDoubleTapDown: _handleDoubleTapDown,
                        
                      ),
                    ),
                    
                     AnimatedBuilder(
                      animation: _controller,
                       builder: (context,child){
                          return Positioned(
                                   left: _dragPosition.dx + widget.ultimateWidth*sequenceAnimation['number_width'].value,
                                  top:isDragging? _dragPosition.dy-widget.ultimateHeight*sequenceAnimation['number_height'].value-(widgetPosition-widget.ultimateHeight*0.74):!emoji? _dragPosition.dy-widget.ultimateHeight*sequenceAnimation['number_height'].value-(widgetPosition-widget.ultimateHeight*0.74):_dragPosition.dy-widget.ultimateHeight*sequenceAnimation['number_height'].value,
                             // child: Text(_dragPosition.dy.toString()),)
                                   child: Opacity(
                                    opacity: sequenceAnimation['fontOpacity'].value,
                                     child: Text(
                                      _dragPercentage.toString().length > 3 ? '${_dragPercentage.toString().substring(0, 3)}' :_dragPercentage.toString(),
                                      style: TextStyle(
                                                 fontSize: sequenceAnimation['font_size'].value,
                                                 color: Colors.grey[900]
                                       
                                                 
                                      ),
                                      ),
                                   ),);
                 } ),
                     Positioned(
                       left: _dragPosition.dx + widget.ultimateWidth*0.06,
                      top:isDragging? _dragPosition.dy-widget.ultimateHeight*0.020-(widgetPosition-widget.ultimateHeight*0.75):emoji? _dragPosition.dy-widget.ultimateHeight*0.020 :emojiPlace,
                       child:AnimatedBuilder(
                        animation: _controller,
                        builder: (context,child){
                          return Row(
                     
                        children: [
                          Row(
                            children:  [
                              Opacity(
                                opacity: sequenceAnimation['opacity'].value,
                                child: Text('(',
                                
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight:FontWeight.bold,
                                  
                                ),),
                              ),
                               Opacity(
                                opacity: sequenceAnimation['opacity'].value,
          
                                 child: Text('(',style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: ui.FontWeight.bold
                                 ),),
                               )
                            ],
                          ),
                     
                        const  SizedBox(
                            width: 40,
                          ),
                          
                           Row(
                            children:  [
                              Opacity(
                                opacity: sequenceAnimation['opacity'].value,
          
                                child: Text(')',style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: ui.FontWeight.bold
                                 ),),
                              ),
                               Opacity(
                                opacity: sequenceAnimation['opacity'].value,
          
                                 child: Text(')',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: ui.FontWeight.bold
                                 ),),
                               )
                            ],
                          ),
                        ],
                       );
                       })
                     )
                 
                  ],
                ),
                 Container(
                        
                          height: MediaQuery.of(context).size.height*0.83,
                            width: MediaQuery.of(context).size.width,
                          child: Padding(
                            
                            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                            child: Container(
                           
                            
                             decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(20),
                      color:Colors.grey[100],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                           spreadRadius: 3,
                          offset: Offset(0, 1),
                          
                        )
                      ],
                      
                             )),)),
              ],
            ),
          ),
        ), 
        Positioned(
                 
                  bottom: 0,
                  child: Bottom_nav()),
      ],
    );
  }
}


//wave painter   endstart
//wave painter start
//wave painter start
//wave painter start
//wave painter start
//wave painter start


class WavePainter extends CustomPainter {

  final Offset sliderPosition;
  final double dragPercentage;
  final  widgetPosiion;


  final bool isDragging;

  final Color color;
  
  final Paint circlePainter;
  final Paint linePianter;
  final double heights;
  final double widths;
  

  WavePainter( 
    {required this.sliderPosition,
     required this.widgetPosiion,
    required this.widths,
    required this.isDragging,
    required this.heights,
    required this.dragPercentage, 
    required this.color}): circlePainter = Paint()
     ..color=color
    ..style=PaintingStyle.fill,
    linePianter = Paint()
    ..style=PaintingStyle.stroke
    ..strokeWidth=3
    // ..color=color
    ..shader = ui.Gradient.linear(
  Offset(0,50),
  Offset(100,180),
  
    [
     ui.Color.fromARGB(255, 255, 99, 99),
      Colors.yellowAccent,
    
      Colors.blue,
      Colors.green
    ],
    [
      0.10,
      0.5,
      
      0.9,
      0.10,
    ],
  )

    ;
    

  @override
  void paint(Canvas canvas, Size size) {
    _paintAnchor(canvas, size);
    _paintLine(canvas, size);
   
    // _smileyPaint(canvas, size);
    // _drowArc1(canvas, size);
    // _drowArc2(canvas, size);
    // _drowArc3(canvas, size);
    // _drowArc4(canvas, size);
  }

  _paintAnchor(Canvas canvas , Size size){
   canvas.drawCircle(Offset(20,size.height/2),2,circlePainter);
   canvas.drawCircle(Offset(size.width-20,size.height/2),2,circlePainter);
  }

  _paintLine(Canvas canvas,Size size ){
    double x;
    bool checkX; // to check weather the emoji is still in the slider
    if (sliderPosition.dx<widths*0.11 || sliderPosition.dx>widths*0.72){
      checkX=false;
      x=widths*0.415;
    }else {
      if(isDragging){
       x=sliderPosition.dx-25;
      }else{
        x=sliderPosition.dx-13;
      }
      
      checkX=true;
    }
    double line;
    if (sliderPosition.dx<widths*0.11 || sliderPosition.dx>widths*0.72){
      line=widths*0.415;
    }else{
      line=sliderPosition.dx+13;
    }
   
  
    
    Path path=Path();
    path.moveTo(20, size.height/2);
    path.lineTo(sliderPosition.dy-widgetPosiion<heights*0.76 || sliderPosition.dy-widgetPosiion>heights*0.80 ?20:x, size.height/2);
    sliderPosition.dy-widgetPosiion<heights*0.76  || sliderPosition.dy-widgetPosiion>heights*0.80 ? path.quadraticBezierTo(sliderPosition.dx, (sliderPosition.dy-widgetPosiion)-heights*0.77, size.width-20,  size.height/2):
    checkX && isDragging  && sliderPosition.dy-widgetPosiion<heights*0.80 ? path.cubicTo(sliderPosition.dx-20, 75, sliderPosition.dx+15, 75, sliderPosition.dx+25, size.height/2):

      
    sliderPosition.dy>heights*0.78? path.lineTo(size.width-20, size.height/2):
     path.moveTo(line, size.height/2);

     path.lineTo(size.width-20, size.height/2);
    
    canvas.drawPath(path , linePianter);
  }

//    _smileyPaint(Canvas canvas, Size size) {
//     final radius = Math.min(size.width, size.height) / 5;
//     var center = Offset(sliderPosition.dx , sliderPosition.dy-heights*0.73) ;

//     // canvas.drawRect(center,Paint());
//     canvas.drawCircle(center, radius, Paint());
//     // Draw the body
//     final paint = Paint()..color = Colors.yellow;
//     canvas.drawCircle(center, radius, paint);
//     // Draw the mouth
//     final smilePaint = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 3;
//     canvas.drawArc(Rect.fromCircle(center: center, radius: radius / 3), 0,
//         Math.pi, false, smilePaint);
//     // Draw the eyes
//     canvas.drawCircle(
//         Offset(center.dx - radius / 2, center.dy - radius / 2), 3, Paint());
//     canvas.drawCircle(
//         Offset(center.dx + radius / 2, center.dy - radius / 2), 3, Paint());
//   }

//   _drowArc1(Canvas canvas, Size size) {
// var center = Offset(sliderPosition.dx - 30,sliderPosition.dy-heights*0.75) ;
//      var paint1 = Paint()
//       ..color = ui.Color.fromARGB(255, 10, 10, 10)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;
//     //draw arc
//     canvas.drawArc(center & Size(30,30),
//         2.2, //radians
//         2, //radians
//         false,
//         paint1);
//   }
//    _drowArc2(Canvas canvas, Size size) {
// var center = Offset(sliderPosition.dx - 25, sliderPosition.dy-heights*0.744) ;
//      var paint1 = Paint()
//       ..color = ui.Color.fromARGB(255, 10, 10, 10)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;
//     //draw arc
//     canvas.drawArc(center & Size(20,20),
//         2.2, //radians
//         2, //radians
//         false,
//         paint1);
//   }

//   _drowArc3(Canvas canvas, Size size) {
// var center = Offset(sliderPosition.dx + 5, sliderPosition.dy-heights*0.744) ;
//      var paint1 = Paint()
//       ..color = ui.Color.fromARGB(255, 10, 10, 10)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;
//     //draw arc
//     canvas.drawArc(center & Size(20,20),
//         -1, //radians
//         2, //radians
//         false,
//         paint1);
//   }
//   _drowArc4(Canvas canvas, Size size) {
// var center = Offset(sliderPosition.dx + 0.4, sliderPosition.dy-heights*0.75) ;
//      var paint1 = Paint()
//       ..color = ui.Color.fromARGB(255, 10, 10, 10)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;
//     //draw arc
//     canvas.drawArc(center & Size(30,30),
//         -1, //radians
//         2, //radians
//         false,
//         paint1);
//   }

  @override
  bool shouldRepaint(WavePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(WavePainter oldDelegate) => true;
}


//wave painter  end
//wave painter end
//wave painter end
//wave painter end
//wave painter end
