

import 'package:flutter/material.dart';
import 'package:sportapp/UI/News/Stories_widget.dart';
import 'package:sportapp/UI/Watch/Watch.dart';

class News extends StatefulWidget {
  

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
 Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        elevation: 0.0,
         backgroundColor: Colors.grey[700],
        leading:  IconButton(icon: Icon(Icons.settings_outlined,size: 30,),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Watch()));
        },
        
        ),
      title: Text("Settings"),
      titleSpacing: 110,
      ),

      body: SingleChildScrollView(
        child: 
          Padding(padding: EdgeInsets.only(top: 15,left: 10),child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: 
          
          
          Row(
            
            children: [
              
              Container(
                height: size.height*0.20,
                width: size.width*0.7,
              
                decoration: BoxDecoration(
                    color: Colors.yellow,
                  image: DecorationImage(image:AssetImage('assets/images/news1.jpeg'),
                  fit: BoxFit.cover
                   ),
                   borderRadius: BorderRadius.circular(10)
               
                ),
                child:
                Padding(padding: EdgeInsets.only(left: size.width*0.030,),child: 
                
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 23,
                      width: 60,
                      color: Colors.black87,
                      child:Center(child: 
                       Text("Football",
                      style: TextStyle(
                        color: Colors.white
                      
                      ),),
                    )),
                     Text("Cherris midfielder brooks diagnosed with hodgkin lymphoma",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      
                      ),),
                       Text("Updated 1 hour ago",
                      style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      
                      ),),
                  ],
                ),

              )
              ),
              SizedBox(width: 10,),
              
               Container(
                height: size.height*0.2,
              width: size.width*0.7,
              
                decoration: BoxDecoration(
                    color: Colors.yellow,
                  image: DecorationImage(image:AssetImage('assets/images/news4.jpeg'),
                  fit: BoxFit.cover
                   ),
                   borderRadius: BorderRadius.circular(10)
               
                ),
                child:
                Padding(padding: EdgeInsets.only(left: size.width*0.030,),child: 
                
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 23,
                      width: 60,
                      color: Colors.black87,
                      child:Center(child: 
                       Text("Football",
                      style: TextStyle(
                        color: Colors.white
                      
                      ),),
                    )),
                     Text("Cherris midfielder brooks diagnosed with hodgkin lymphoma",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      
                      ),),
                       Text("Updated 1 hour ago",
                      style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      
                      ),),
                  ],
                ),

              )
              )
              ],
          )
          ),
          SizedBox(height: 20,),
          
           Text("Top Stories",
                      style: TextStyle(
                        color: Colors.white,
                       
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      
                      ),),
                      SizedBox(height: 10,),
                      Stories(
                        discription: "Transfer Talk:Five Eredivisal ",
                        discription1: "Stars Who Could Light Up ",
                        discription3: "to Preimer",
                        eventName: 'Football',
                        eventflag: 'salah.jpeg',
                        time: '7 Hour ago'
                        ),
                        Stories(
                        discription: "Transfer Talk:Five Eredivisal ",
                        discription1: "Stars Who Could Light Up ",
                        discription3: "to Preimer",
                        eventName: 'Football',
                        eventflag: 'kevin.jpeg',
                        time: '7 Hour ago'
                        ),
                        Stories(
                        discription: "Transfer Talk:Five Eredivisal ",
                        discription1: "Stars Who Could Light Up ",
                        discription3: "to Preimer",
                        eventName: 'Football',
                        eventflag: 'neymar.jpeg',
                        time: '7 Hour ago'
                        )
                      
          ],
          
        )
      ),
      
    ));
  }
}