import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:sania/app_bar.dart';
import 'dart:math' as Math;

import 'package:sania/body.dart';
import 'package:sania/bottom_nav.dart';

class Slider_Widget extends StatefulWidget {
  
  Slider_Widget({Key? key}) : super(key: key);

  @override
  State<Slider_Widget> createState() => _Slider_WidgetState();
}

class _Slider_WidgetState extends State<Slider_Widget> {
  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Slider(
        theHeight: MediaQuery.of(context).size.height,
      ),
    );
  }
}

class Slider extends StatefulWidget {
  
  final double height;
  final double theHeight;
  Slider({this.height=50, required this.theHeight}) ;

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
    } else if(val.dx >= MediaQuery.of(context).size.width*0.80-25){
      newDragPosition=MediaQuery.of(context).size.width*0.80-25;
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
    print(offset.dx);
    _UpdateDragPosion(offset);
     setState(() {
       _dragPosition=Offset(offset.dx, offset.dy);
    });
   

  }

   void _onDragStart(BuildContext context, DragStartDetails start){
    RenderBox? box= context.findRenderObject() as RenderBox?;
    Offset offset= box!.globalToLocal(start.globalPosition);
    _UpdateDragPosion(offset);
    setState(() {
       _dragPosition=Offset(offset.dx, offset.dy);
    });
   

  }
// animation after end of drag
// animation after end of drag
// animation after end of drag
// animation after end of drag


   void _onDragEnd(BuildContext context, DragEndDetails end){
    setState(() {
      _dragPosition=ui.Offset(170, widget.theHeight *0.78) ;
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
     _dragPosition=Offset(170,widget.theHeight*0.78);
    _dragPercentage=0;
  }

//   @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Appbar())),
        Positioned(
          bottom: 0,
          child: Bottom_nav()),
        Positioned(
         left: _dragPosition.dx - MediaQuery.of(context).size.width*0.415,
         top: _dragPosition.dy - widget.theHeight*0.72,
         
          child: body()),
          // Positioned(
          //   top: 200,
          //   left: 50,
          //   child: Text(_dragPosition.toString())),
        Positioned(
          top: widget.theHeight*0.77,
          left: MediaQuery.of(context).size.width*0.14,
          child: GestureDetector(
            child: Container(
              height: 80,
              // color: Colors.blue,

              width: MediaQuery.of(context).size.width*0.82,
              
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
                  heights: widget.theHeight,
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
          left: _dragPosition.dx + MediaQuery.of(context).size.width*0.1,
          top: _dragPosition.dy-10 ,
        child: Text(_dragPosition.dy.toString()),)
        //  child: Text(_dragPercentage.toString().length > 3 ? '${_dragPercentage.toString().substring(0, 3)}' :_dragPercentage.toString())),
          //  Positioned(
          // left: _dragPosition - 20,
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
    path.lineTo(sliderPosition.dy<heights*0.78 || sliderPosition.dy>heights*0.85?20:sliderPosition.dx-25, size.height/2);
    sliderPosition.dy<heights*0.78 || sliderPosition.dy>heights*0.85? path.quadraticBezierTo(sliderPosition.dx, sliderPosition.dy-heights*0.77, size.width-20,  size.height/2):
     path.cubicTo(sliderPosition.dx-20, 60, sliderPosition.dx+10, 75, sliderPosition.dx+25, size.height/2);

      
    path.lineTo(size.width-20, size.height/2);

   
    
    canvas.drawPath(path , linePianter);
  }

   _smileyPaint(Canvas canvas, Size size) {
    final radius = Math.min(size.width, size.height) / 5;
    var center = Offset(sliderPosition.dx , size.height /2) ;

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
var center = Offset(sliderPosition.dx - 30, size.height *0.32) ;
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
var center = Offset(sliderPosition.dx - 25, size.height *0.38) ;
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
var center = Offset(sliderPosition.dx + 5, size.height *0.38) ;
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
var center = Offset(sliderPosition.dx + 0.4, size.height *0.30) ;
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
