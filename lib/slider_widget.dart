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

class _SliderState extends State<Slider> with SingleTickerProviderStateMixin {
   


  late AnimationController _animationController;
 late  Animation _sliderAnimation;

 late double animBegin;
 late double animENd;
 bool originalpos=true;
@override
  void initState() {
    // TODO: implement initState

    super.initState();
    animBegin=widget.ultimateHeight*0.78;
    animENd=widget.ultimateHeight*0.78;
     _dragPosition=Offset(widget.ultimateWidth*0.4,widget.ultimateHeight*0.78);
    _dragPercentage=2.5;
 _animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 200));
    _initAnimation();

    _animationController.forward();
  
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

   


  void _onDragUpdate(BuildContext context, DragUpdateDetails update){
    RenderBox? box= context.findRenderObject() as RenderBox?;
    Offset offset= box!.globalToLocal(update.globalPosition);
    
    _UpdateDragPosion(offset);
     setState(() {
        _dragPosition=Offset(offset.dx -widget.ultimateWidth*0.155, offset.dy);
         getRotation();
           isDragging=true;
    });

  

   
     
  
  
   
    
 
  }

   void _onDragStart(BuildContext context, DragStartDetails start){
    RenderBox? box= context.findRenderObject() as RenderBox?;
    Offset offset= box!.globalToLocal(start.globalPosition);
    _UpdateDragPosion(offset);
    setState(() { 
       _dragPosition=Offset(offset.dx -widget.ultimateWidth*0.155, offset.dy);
       isDragging=true;
    });
   
       animBegin=widget.ultimateHeight *0.65;
    animENd= widget.ultimateHeight *0.96;

  
    _initAnimation();
  
    TickerFuture tickerFuture = _animationController.repeat();
     
      
    tickerFuture.timeout(Duration(milliseconds: 2000), onTimeout:  () {
      _animationController.forward();
      _animationController.reverse();
     originalpos=false;
      // _animationController.stop(canceled: true);
   
      
            

     
    });
originalpos=true;
  }
// animation after end of drag
// animation after end of drag
// animation after end of drag
// animation after end of drag


   void _onDragEnd(BuildContext context, DragEndDetails end){
    

    setState(() {
      _dragPosition=Offset(widget.ultimateWidth*0.4, widget.ultimateHeight *0.78) ;
      _dragPercentage=2.5;
      isDragging=false;

      
   
    });
   
   
  }

  // animation after end of drag
// animation after end of drag
// animation after end of drag
// animation after end of drag

  getRotation(){
  
  double angle=0;
     if(_dragPosition.dy>widget.ultimateHeight*0.81 || _dragPosition.dy<widget.ultimateHeight*0.76 ){
     
      setState(() {
        
        angle=(_dragPosition.dx /1000)-0.16;
       
      });
      
        
     }else {
     
      setState(() {
       
        angle=-(_dragPosition.dx /1000)+0.16;
        
      });
     }
      
   
    

    return angle;
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
         
          child: Transform.rotate(
            angle:getRotation() ,
             
           child: body())),
             Positioned(
          left: _dragPosition.dx + widget.ultimateWidth*0.10,
          top: _dragPosition.dy-widget.ultimateHeight*0.024 ,
          child: CircleAvatar(
            radius: 17,
            backgroundColor: Color(0XFFF2F2F2),
            child:Image.asset('assets/images/emoji.png'),)),
     
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
            
          ),
        ),
        
         Positioned(
          left: _dragPosition.dx + widget.ultimateWidth*0.11,
          top: _dragPosition.dy-widget.ultimateHeight*0.045 ,
        // child: Text(_dragPosition.dy.toString()),)
         child: Text(_dragPercentage.toString().length > 3 ? '${_dragPercentage.toString().substring(0, 3)}' :_dragPercentage.toString())),
         Positioned(
           left: _dragPosition.dx + widget.ultimateWidth*0.06,
          top: _dragPosition.dy-widget.ultimateHeight*0.020 ,
           child: Row(
         
            children: [
              Row(
                children:  [
                  Text('(',style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.bold
                  ),),
                   Text('(',style: TextStyle(
                    fontSize: 13,
                    fontWeight: ui.FontWeight.bold
                   ),)
                ],
              ),
         
            const  SizedBox(
                width: 40,
              ),
              
               Row(
                children:  [
                  Text(')',style: TextStyle(
                    fontSize: 13,
                    fontWeight: ui.FontWeight.bold
                   ),),
                   Text(')',style: TextStyle(
                    fontSize: 20,
                    fontWeight: ui.FontWeight.bold
                   ),)
                ],
              ),
            ],
           ),
         )
     
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



  final bool isDragging;

  final Color color;
  
  final Paint circlePainter;
  final Paint linePianter;
  final double heights;
  final double widths;
  

  WavePainter( 
    {required this.sliderPosition,
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
    var y;
     if(isDragging){
      y=sliderPosition.dy<heights* 0.77;
     }else{
      y= sliderPosition.dy>heights*0.80;
     }

    Path path=Path();
    path.moveTo(20, size.height/2);
    path.lineTo(sliderPosition.dy<heights*0.76 || y ?20:x, size.height/2);
    sliderPosition.dy<heights*0.76  || y ? path.quadraticBezierTo(sliderPosition.dx, sliderPosition.dy-heights*0.77, size.width-20,  size.height/2):
   checkX && isDragging && sliderPosition.dy<heights*0.80? path.cubicTo(sliderPosition.dx-20, 75, sliderPosition.dx+15, 75, sliderPosition.dx+25, size.height/2):

      
    sliderPosition.dy>heights*0.78? path.lineTo(size.width-20, size.height/2):
     path.moveTo(sliderPosition.dx+13, size.height/2);

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
