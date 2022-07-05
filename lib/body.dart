import 'package:flutter/material.dart';
import 'package:sania/slider_widget.dart';
class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       height: MediaQuery.of(context).size.height*0.83,
        width: MediaQuery.of(context).size.width,
      child: Padding(
        
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        child: Container(
       
        
         decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(20),
          color:Color(0XFFF2F2F2),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
               spreadRadius: 3,
              offset: Offset(0, 1),
              
            )
          ],
          
         ),
         child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Row(
                      children: [
                        
                         Container(
                          height: 65,
                          
                           child: Column(
                             children: [
                              Text('32',style: TextStyle(fontSize: 10),),
                              SizedBox(height: 3,),
                              Row(
                                children: [
                                  Text('(',style: TextStyle(fontSize: 22,color: Colors.black26,fontWeight: FontWeight.bold),),
                                  Text('(',style: TextStyle(fontSize: 15,color: Colors.black26,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 3,),
                                             Container(
                                             decoration: BoxDecoration(
                                               shape: BoxShape.circle,
                                               color: Colors.white,
                                               border: Border.all(color: Colors.blueAccent,width: 2),
                                                 boxShadow: [
                                     BoxShadow(
                                       color: Colors.black12,
                                       blurRadius: 8,
                                        spreadRadius: 8,
                                        offset: Offset(0, 1)
                                       
                                       
                                     )
                                   ],
                         
                                             ),
                                               child: Icon(Icons.person,size: 28,color: Colors.blueAccent,
                                               ),
                                             ),
                                                      SizedBox(width:3,),
                                               Text(')',style: TextStyle(fontSize: 15 ,color: Colors.black26,fontWeight: FontWeight.bold),),
                                  Text(')',style: TextStyle(fontSize: 22,color: Colors.black26,fontWeight: FontWeight.bold),),
                         
                                 
                                ],
                              ),
                               
                              
                             ],
                           ),
                         ),
                         SizedBox(width: 5,),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                         children: [
                          const Text('Elon22>TeslaMotors',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                color: Colors.black54,
                                blurRadius: 2,
                                
                                offset: Offset(0, 1)
                              )
                            ]
                            ),),
                            Text('12:59 am pakistan',style: TextStyle(
                              fontSize:12,
                              color: Colors.black54,
                            ),)
                         ],
                       ),
                       SizedBox(width: 20,),
                        Row(
                          children: [
                           Icon(Icons.add),
                           SizedBox(width: 10,),
                           Icon(Icons.more_vert)
                          ],
                        )
                      ],
                    ),
                   Padding(
                     padding: const EdgeInsets.only(top:0,bottom: 10 ),
                     child: Row(
                       children: [
                         Text('Good work guys! remember the t...',style: TextStyle(),),
                          Text('see more',style: TextStyle(fontWeight: FontWeight.w500),)
                       ],
                     ),
                   ),
                  
                  ],
                ),
                ),
            ),
// the image Start
//// the image Start
///// the image   Start          
///// the image Start
///// the image Start
            Expanded(
              child: Container(
                
                decoration: BoxDecoration(
                   color: Colors.white,
                    boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
               spreadRadius: 2,
              offset: Offset(0, 1),
              
            ),
            
          ],
                ),
                child: Image.asset('assets/images/car.png'),
                )),
// the image End
//// the image End
///// the image End   
///// the imag End                
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 5,left: 10,right: 10),
              child: Container(
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                              Row(
                                          children: [
                                            Text('(',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                                            Text('(',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                            SizedBox(width: 3,),
                                                       Container(
                                                        height: 30,
                                                        width: 30,
                                                       decoration: BoxDecoration(
                                                         shape: BoxShape.circle,
                                                         color: Color(0XFFF2F2F2),
                                                         border: Border.all(color: Color(0XFFF2F2F2),width: 2),
                                                           boxShadow: [
                                               BoxShadow(
                                                 color: Colors.black12,
                                                 blurRadius: 2,
                                                  spreadRadius: 3,
                                                  offset: Offset(0, 1)
                                                 
                                                 
                                               )
                                             ],
                                   
                                                       ),
                                                         child:Center(child: Text('3.2',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),))
                                                       ),
                                                                SizedBox(width:3,),
                                                         Text(')',style: TextStyle(fontSize: 15 ,color: Colors.white,fontWeight: FontWeight.bold),),
                                            Text(')',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                                   
                                           
                                          ],
                                        ),
                                         Row(
                                          children: [
                                            Text('(',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                                            Text('(',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                            SizedBox(width: 3,),
                                                       Container(
                                                        height: 30,
                                                        width: 30,
                                                       decoration: BoxDecoration(
                                                         shape: BoxShape.circle,
                                                         color: Color(0XFFF2F2F2),
                                                         border: Border.all(color: Color(0XFFF2F2F2),width: 2),
                                                           boxShadow: [
                                               BoxShadow(
                                                 color: Colors.black12,
                                                 blurRadius: 2,
                                                  spreadRadius: 3,
                                                  offset: Offset(0, 1)
                                                 
                                                 
                                               )
                                             ],
                                   
                                                       ),
                                                         child:Center(child: Column(
                                                           children: [
                                                             Icon(Icons.remove_red_eye_outlined,size: 15,),
                                                             Text('105',style: TextStyle(
                                                              fontSize: 8,
                                                              fontWeight: FontWeight.w500),),
                                                           ],
                                                         ))
                                                       ),
                                                                SizedBox(width:3,),
                                                         Text(')',style: TextStyle(fontSize: 15 ,color: Colors.white,fontWeight: FontWeight.bold),),
                                            Text(')',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                                   
                                           
                                          ],
                                        ),
                                         Row(
                                          children: [
                                            Text('(',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                                            Text('(',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                            SizedBox(width: 3,),
                                                       Container(
                                                        height: 30,
                                                        width: 30,
                                                       decoration: BoxDecoration(
                                                         shape: BoxShape.circle,
                                                         color: Color(0XFFF2F2F2),
                                                         border: Border.all(color: Color(0XFFF2F2F2),width: 2),
                                                           boxShadow: [
                                               BoxShadow(
                                                 color: Colors.black12,
                                                 blurRadius: 2,
                                                  spreadRadius: 3,
                                                  offset: Offset(0, 1)
                                                 
                                                 
                                               )
                                             ],
                                   
                                                       ),
                                                         child:Center(child: Column(
                                                           children: [
                                                             Icon(Icons.photo,size: 15,),
                                                             Text('150',style: TextStyle(
                                                              fontSize: 8,
                                                              fontWeight: FontWeight.w500),),
                                                           ],
                                                         ))
                                                       ),
                                                                SizedBox(width:3,),
                                                         Text(')',style: TextStyle(fontSize: 15 ,color: Colors.white,fontWeight: FontWeight.bold),),
                                            Text(')',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                                   
                                           
                                          ],
                                        ),
                                       
                          ],
                        ),
                         Row(
                                          children: [
                                           
                                            SizedBox(width: 3,),
                                                       Container(
                                                        height: 30,
                                                        width: 30,
                                                       decoration: BoxDecoration(
                                                         shape: BoxShape.circle,
                                                         color: Color(0XFFF2F2F2),
                                                         border: Border.all(color: Color(0XFFF2F2F2),width: 2),
                                                           boxShadow: [
                                               BoxShadow(
                                                 color: Colors.black12,
                                                 blurRadius: 2,
                                                  spreadRadius: 3,
                                                  offset: Offset(0, 1)
                                                 
                                                 
                                               )
                                             ],
                                   
                                                       ),
                                                         child:Center(child: Column(
                                                           children: [
                                                             Icon(Icons.share,size: 15,),
                                                             Text('20',style: TextStyle(
                                                              fontSize: 8,
                                                              fontWeight: FontWeight.w500),),
                                                           ],
                                                         ))
                                                       ),
                                                               
                                   
                                           
                                          ],
                                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('146 Vibes',style: TextStyle(fontSize: 10,color: Colors.black),),
                    ),
        // slider                   
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                            Text('Sexy'),
                             // //slider place 
                            // Slider_Widget()
        
                        ],
                      ),
                    ),
        
        // Single child Scroll view of row
        
                   
                      Row(
                        children: [
                           Container(
                            height: 20,
                            child: Icon(Icons.add,size: 30,)),
                          SizedBox(width: 10,),
                          Expanded(
                            child: SingleChildScrollView(
                              
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  
                          
                          // first Child                             
                                     Container(
                                          
                                          decoration: BoxDecoration(
                                             boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  offset: Offset(0, 1)
                                )
                              ],
                                            borderRadius: BorderRadius.circular(20),color: Color(0XFFFFFFFF),),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              
                                            Container(
                                              decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(color: Colors.blueAccent,width: 2),
                             
                                              ),
                              child: Icon(
                                
                                Icons.person,size: 22,color: Colors.blueAccent,
                              ),
                                              ),
                                              
                                              SizedBox(width: 10,),
                                              Text('SExy',style: TextStyle(color: Colors.black,fontSize: 15),),
                                              SizedBox(width: 13,),
                                            ],
                                          ),
                          
                                          ),
                          // Second Child                            
                                            SizedBox(width: 8,),
                                           Container(
                                          
                                          decoration: BoxDecoration(
                                       boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  offset: Offset(0, 1)
                                )
                              ],
                                            borderRadius: BorderRadius.circular(20),color: Color(0XFFFFFFFF),),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                            Container(
                                              decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black,width: 2)
                                              ),
                              child: Icon(Icons.person,size: 22,color: Colors.black,
                              ),
                                              ),
                                              
                                              SizedBox(width: 10,),
                                              Text('Lovely',style: TextStyle(color: Colors.black26,fontSize: 15),),
                                              SizedBox(width: 13,),
                                            ],
                                          ),
                                          
                                          ),
                          // Third Child
                          
                                          SizedBox(width: 8,),
                                            Container(
                                          
                                          decoration: BoxDecoration(
                                             boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  offset: Offset(0, 1)
                                )
                              ],
                                            borderRadius: BorderRadius.circular(20),color: Color(0XFFFFFFFF),),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                            Container(
                                              decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black,width: 2)
                                              ),
                              child: Icon(Icons.person,size: 22,color: Colors.black,
                              ),
                                              ),
                                              
                                              SizedBox(width: 10,),
                                              Text('beautiful',style: TextStyle(color: Colors.black26,fontSize: 15),),
                                              SizedBox(width: 13,),
                                            ],
                                          ),
                                          
                                          
                                          ),
                          // Fourth Child                      
                                            SizedBox(width: 8,),
                                            Container(
                                          
                                          decoration: BoxDecoration(
                                             boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  offset: Offset(0, 1)
                                )
                              ],
                                            borderRadius: BorderRadius.circular(20),color: Color(0XFFFFFFFF),),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                            Container(
                                              decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black,width: 2)
                                              ),
                              child: Icon(Icons.person,size: 22,color: Colors.black,
                              ),
                                              ),
                                              
                                              SizedBox(width: 10,),
                                              Text('Handsome',style: TextStyle(color: Colors.black12,fontSize: 15),),
                                              SizedBox(width: 13,),
                                            ],
                                          ),
                                          
                                          
                                          ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                  ],
                ),
                ),
            )
          ],
         ),
        ),
      ),
    );
  }
}

