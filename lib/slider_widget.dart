import 'dart:ui' as ui;
import 'package:flutter/material.dart';
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

class _SliderState extends State<Slider> {
   
  late  Offset _dragPosition;
  late  double _dragPercentage;
    
    

   void _UpdateDragPosion(Offset val){
    double newDragPosition=0;
    if(val.dx <= 20){
      newDragPosition=20;
    } else if(val.dx >= MediaQuery.of(context).size.width*0.8025){
      newDragPosition=MediaQuery.of(context).size.width*0.8025;
    }else{
      newDragPosition=val.dx;
    }

    setState(() {
      _dragPosition=ui.Offset(newDragPosition, 0) ;
      _dragPercentage=newDragPosition/MediaQuery.of(context).size.width*0.75;
    });
   }


  void _onDragUpdate(BuildContext context, DragUpdateDetails update){
    RenderBox? box= context.findRenderObject() as RenderBox?;
    Offset offset= box!.globalToLocal(update.globalPosition);
    
    _UpdateDragPosion(offset);
     setState(() {
       _dragPosition=Offset(offset.dx -widget.ultimateWidth*0.155, offset.dy);
    });
   

  }

   void _onDragStart(BuildContext context, DragStartDetails start){
    RenderBox? box= context.findRenderObject() as RenderBox?;
    Offset offset= box!.globalToLocal(start.globalPosition);
    _UpdateDragPosion(offset);
    setState(() { 
       _dragPosition=Offset(offset.dx -widget.ultimateWidth*0.155, offset.dy);
    });
   

  }
// animation after end of drag
// animation after end of drag
// animation after end of drag
// animation after end of drag


   void _onDragEnd(BuildContext context, DragEndDetails end){
    setState(() {
      _dragPosition=Offset(widget.ultimateWidth*0.4, widget.ultimateHeight *0.78) ;
    });
   
  }

  // animation after end of drag
// animation after end of drag
// animation after end of drag
// animation after end of drag
@override
  void initState() {
    // TODO: implement initState

    super.initState();
     _dragPosition=Offset(widget.ultimateWidth*0.4,widget.ultimateHeight*0.78);
    _dragPercentage=0;
  }

//   @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      
        Positioned(
          top: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Appbar())),
           
        Positioned(
         
          bottom: 0,
          child: Bottom_nav()),
        Positioned(
         left: _dragPosition.dx - widget.ultimateWidth*0.415,
         top: _dragPosition.dy - widget.ultimateHeight*0.72,
         
          child: body()),
          // Positioned(
          //   top: 200,
          //   left: 50,
          //   child: Text(_dragPosition.toString())),
        Positioned(
          top: widget.ultimateHeight*0.73,
          left: widget.ultimateWidth*0.14,
          child: GestureDetector(
            child: Container(
              height: 80,
              // color: Colors.blue,

              width:widget.ultimateWidth*0.82,
              
              //       decoration: BoxDecoration(
              //     gradient:LinearGradient(
              //         colors: [
              //         Colors.redAccent, 
              //         Colors.orangeAccent,
              //         Colors.blue,
              //         Colors.green
              //         //add more colors for gradient
              //         ],
              //         begin: Alignment.topLeft, //begin of the gradient color
              //         end: Alignment.bottomRight, //end of the gradient color
              //         stops: [0, 0.2, 0.5, 0.8] //stops for individual color
              //         //set the stops number equal to numbers of color
              //     ),
              // ),
              child: CustomPaint(
                
                painter: WavePainter(
                  heights: widget.ultimateHeight,
                  sliderPosition: _dragPosition, 
                  dragPercentage: _dragPercentage,
                  color: Color(0XFFF2F2F2),
                
                  )
              ),
            ),
             onHorizontalDragUpdate: (DragUpdateDetails update) => _onDragUpdate(context, update),
            onHorizontalDragStart: (DragStartDetails start) => _onDragStart(context,start),
            onHorizontalDragEnd: (DragEndDetails end)=> _onDragEnd(context , end)
          ),
        ),
        
         Positioned(
          left: _dragPosition.dx + widget.ultimateWidth*0.11,
          top: _dragPosition.dy-widget.ultimateHeight*0.045 ,
        // child: Text(_dragPosition.dy.toString()),)
         child: Text(_dragPercentage.toString().length > 3 ? '${_dragPercentage.toString().substring(0, 3)}' :_dragPercentage.toString())),
          //  Positioned(
          // left: _dragPosition.dx - 20,
          // top: 20,
          // child: CircleAvatar(
          //   radius: 20,
          //   child:Image.asset('assets/images/emoji.png'),)),
     
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

  final Color color;
  
  final Paint circlePainter;
  final Paint linePianter;
  final double heights;

  WavePainter( 
    {required this.sliderPosition,
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
    _smileyPaint(canvas, size);
    _drowArc1(canvas, size);
    _drowArc2(canvas, size);
    _drowArc3(canvas, size);
    _drowArc4(canvas, size);
  }

  _paintAnchor(Canvas canvas , Size size){
   canvas.drawCircle(Offset(20,size.height/2),2,circlePainter);
   canvas.drawCircle(Offset(size.width-20,size.height/2),2,circlePainter);
  }

  _paintLine(Canvas canvas,Size size ){
    
    Path path=Path();
    path.moveTo(20, size.height/2);
    path.lineTo(sliderPosition.dy<heights*0.78 || sliderPosition.dy>heights*0.79?20:sliderPosition.dx-25, size.height/2);
    sliderPosition.dy<heights*0.78 || sliderPosition.dy>heights*0.79? path.quadraticBezierTo(sliderPosition.dx, sliderPosition.dy-heights*0.77, size.width-20,  size.height/2):
     path.cubicTo(sliderPosition.dx-20, 75, sliderPosition.dx+15, 75, sliderPosition.dx+25, size.height/2);

      
    path.lineTo(size.width-20, size.height/2);

   
    
    canvas.drawPath(path , linePianter);
  }

   _smileyPaint(Canvas canvas, Size size) {
    final radius = Math.min(size.width, size.height) / 5;
    var center = Offset(sliderPosition.dx , sliderPosition.dy-heights*0.73) ;

    // canvas.drawRect(center,Paint());
    canvas.drawCircle(center, radius, Paint());
    // Draw the body
    final paint = Paint()..color = Colors.yellow;
    canvas.drawCircle(center, radius, paint);
    // Draw the mouth
    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius / 3), 0,
        Math.pi, false, smilePaint);
    // Draw the eyes
    canvas.drawCircle(
        Offset(center.dx - radius / 2, center.dy - radius / 2), 3, Paint());
    canvas.drawCircle(
        Offset(center.dx + radius / 2, center.dy - radius / 2), 3, Paint());
  }

  _drowArc1(Canvas canvas, Size size) {
var center = Offset(sliderPosition.dx - 30,sliderPosition.dy-heights*0.75) ;
     var paint1 = Paint()
      ..color = ui.Color.fromARGB(255, 10, 10, 10)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    //draw arc
    canvas.drawArc(center & Size(30,30),
        2.2, //radians
        2, //radians
        false,
        paint1);
  }
   _drowArc2(Canvas canvas, Size size) {
var center = Offset(sliderPosition.dx - 25, sliderPosition.dy-heights*0.744) ;
     var paint1 = Paint()
      ..color = ui.Color.fromARGB(255, 10, 10, 10)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    //draw arc
    canvas.drawArc(center & Size(20,20),
        2.2, //radians
        2, //radians
        false,
        paint1);
  }

  _drowArc3(Canvas canvas, Size size) {
var center = Offset(sliderPosition.dx + 5, sliderPosition.dy-heights*0.744) ;
     var paint1 = Paint()
      ..color = ui.Color.fromARGB(255, 10, 10, 10)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    //draw arc
    canvas.drawArc(center & Size(20,20),
        -1, //radians
        2, //radians
        false,
        paint1);
  }
  _drowArc4(Canvas canvas, Size size) {
var center = Offset(sliderPosition.dx + 0.4, sliderPosition.dy-heights*0.75) ;
     var paint1 = Paint()
      ..color = ui.Color.fromARGB(255, 10, 10, 10)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    //draw arc
    canvas.drawArc(center & Size(30,30),
        -1, //radians
        2, //radians
        false,
        paint1);
  }

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
