import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
   return Container(
     color: Color(0xff1E2747),
      width: MediaQuery.of(context).size.width * 0.75,
      child: Drawer(

     
    
   
      
     
    
    
  // 75% of screen will be occupied
  

      
     child: Container(
       color: Color(0xff1E2747),
       child: 
     
      
      Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SizedBox(height: 1.0,),

          IconButton(
             
    icon: Icon(Icons.arrow_back_rounded, 
    size: 35,
    
    color: Color(0xffFFFFFF)), // set your color here
    onPressed: () {
   
    },
          ),
            SizedBox(height: 10),

            Padding(padding: EdgeInsets.only(left: size.width*0.080),child: 
           Row(
             children: [
               CircleAvatar(
                 radius: 45,
                 backgroundColor: Colors.blue          
                     ),
                     SizedBox(width: size.width*0.040,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('John Doe',
         style: TextStyle(color: Color(0xffFFFFFF),
         decoration: TextDecoration.none,
         fontWeight: FontWeight.bold,
        fontFamily: 'HelveticaNeue-Medium',
         fontSize: 20),),
         
          Text('Business Architect',
         style: TextStyle(color: Color(0xff7592BC),
         decoration: TextDecoration.none,
        fontFamily: 'HelveticaNeue',
         fontSize: 15),),

                       ],
                     )



             ],
           ),
           
           ),

            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.only(left: size.height*0.040),child: 
            MaterialButton(onPressed: (){         },
         minWidth: 96,
         
         height: 32,
          shape: RoundedRectangleBorder(side: BorderSide(
           color: Color(0xff07877D),
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(7)),
         
         color: Color(0xff07877D),
         child: Text("Edit Profile",
         style: TextStyle(color: Color(0xffFFFFFF),
          fontFamily: 'HelveticaNeue-Bold',
         fontSize: 13),),),
            ),
             SizedBox(height: 10,),
             Divider(
               color: Color(0xff7592BC),
               thickness: 0,

             ),

Padding(padding: EdgeInsets.only(left: 15),child: 
            MaterialButton(
                onPressed: () {
                
                  
                },
                child: Text("Contact Us",style: TextStyle(color: Color(0xffFFFFFF),
          fontFamily: 'HelveticaNeue-Bold',
         fontSize: 20),))),
            SizedBox(height: 1.0,),
            Padding(padding: EdgeInsets.only(left: 15),child: 

            MaterialButton(
                onPressed: () {
                  
                  
                },
                child: Text("Logout",style: TextStyle(color: Color(0xffFFFFFF),
          fontFamily: 'HelveticaNeue-Bold',
         fontSize: 20),))),
         

           
          ],
        ),
      ],
    ) )));
  }
}



