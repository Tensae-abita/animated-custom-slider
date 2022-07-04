
import 'package:flutter/material.dart';

class Bottom_nav extends StatelessWidget {
  const Bottom_nav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.06,
          width: MediaQuery.of(context).size.width/5,
          child: Icon(Icons.home)  
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.06,
          width: MediaQuery.of(context).size.width/5,
          child: Icon(Icons.search)
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.06,
          width: MediaQuery.of(context).size.width/5,
          child:  Container(
                                           decoration: BoxDecoration(
                                             shape: BoxShape.circle,
                                             color: Colors.white,
                                             border: Border.all(color: Colors.black12,width: 8),
                                              
                                  
                       
                                           ),
                                             child: Center(
                                               child: Text(
                                                '+',
                                                
                                                style: TextStyle(
                                                  color: Colors.redAccent,
                                                  fontSize: 35,fontWeight: FontWeight.bold),),
                                             )
                                           ), 
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.06,
          width: MediaQuery.of(context).size.width/5,
          child: Icon(Icons.favorite_outline) 
        ),
         Container(
            width: MediaQuery.of(context).size.width/5,
            height: 30,
           child: Container(
                       
                                         
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),color: Color(0XFFFFFFFF),),
                                          child: Row(
                                            children: [
                                               SizedBox(width: 8,),
                                              Column(
                                                children: [
                                                  Text('tensu',style: TextStyle(color: Colors.yellow,fontSize: 10),),
                                                  Text('123',style: TextStyle(color: Colors.yellow,fontSize: 10),),
                                                ],
                                              ),
                                              SizedBox(width: 13,),
                                            Container(
                                              decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black,width: 2)
                                              ),
                              child: Icon(Icons.person,size: 22,color: Colors.black,
                              ),
                                              ),
                                              
                                             
                                            ],
                                          ),
                                          
                                          
                                          ),
         ),
      ],
     );}}