

import 'package:flutter/material.dart';
import 'package:sportapp/UI/values/my_colors.dart';

class Stories extends StatelessWidget {
 
  Stories(
      {
      @required this.discription,
      @required this.discription1,
      @required this.discription3,
      @required this.eventName,
      @required this.eventflag,
      @required this.time,
     
      });
      String  discription,discription1,discription3, eventName,time,eventflag;
     
  @override
  Widget build(BuildContext context) {
     Size size=MediaQuery.of(context).size;
    return Container(
      height: 130,
      width: size.width,
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(width: 1, color: Colors.white38),
            bottom: BorderSide(width: 1, color: Colors.white38),
          ),
      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image:   AssetImage('assets/images/$eventflag'),
              fit: BoxFit.cover
   
          ))
            ),
            
            
         
           Padding(padding: EdgeInsets.only(left: 7),child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
               
                children: [
             
             Text(
                        '$discription',
                        style: TextStyle(fontSize: 14, color: MyColors.white,fontWeight: FontWeight.bold),
                      ),
                       Text(
                        '$discription1',
                        style: TextStyle(fontSize: 14, color: MyColors.white,fontWeight: FontWeight.bold),
                      ),
                       Text(
                        '$discription3',
                        style: TextStyle(fontSize: 14, color: MyColors.white,fontWeight: FontWeight.bold),
                      ),
                      ],),
                      Padding(padding: EdgeInsets.only(top: 10),child: 

                      Row(
                       
                     children: [
                         Container(
                      height: 23,
                      width: 60,
                      color: Colors.black87,
                      child:Center(child: 
                       Text('$eventName',
                      style: TextStyle(
                        color: Colors.white
                      
                      ),),
                    )
                    ),
                    SizedBox(width: 70,),
                     Text(
                       '$time',
                      style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      
                      ),),
                        ],

                              )        )
            ],

          )
      
           )],
      ),
      
    );
  }
}