import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       
        color: Color(0XFFF2F2F2),
        height: MediaQuery.of(context).size.height*0.07,
        child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         mainAxisSize: MainAxisSize.max,
        
          children: [
             Container(
            
            decoration: BoxDecoration(
              
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
                Text('something',style: TextStyle(color: Colors.black,fontSize: 11),),
                SizedBox(width: 15,),
              ],
            ),
            
            
            ),
              Container(
            
            decoration: BoxDecoration(
              
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
                Text('something',style: TextStyle(color: Colors.blue,fontSize: 11),),
                SizedBox(width: 10,),
              ],
            ),
            
            
            ),
              Container(
            
            decoration: BoxDecoration(
              
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
                Text('something',style: TextStyle(color: Colors.blue,fontSize: 11),),
                SizedBox(width: 10,),
              ],
            ),
            
            
            ),
            Icon(Icons.call_to_action_outlined,size: 15,color: Colors.black,
                  ),
          ],
        ),
      );}}