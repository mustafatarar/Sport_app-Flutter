

import 'package:flutter/material.dart';
import 'package:sportapp/UI/Get_Started/Get_started.dart';

class PrivacyPolicy extends StatefulWidget {
  

  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body:
    Center(
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(padding: EdgeInsets.only(top: 20),
          child:
          Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
       CircleAvatar(
        backgroundImage:    AssetImage('assets/images/Ls logo.png'),
        radius: 30,

      ),
      Padding(padding: EdgeInsets.only(bottom: 10,left: 5),
      child:
       Text("TopBongaDa",style: TextStyle(
           color: Colors.white,
         fontSize: 30,
         fontWeight: FontWeight.bold


      )),)
    ],
  )),
  SizedBox(height: 30,),
   Text("We Respect Your Privacy"
   ,style: TextStyle(
         color: Colors.grey[300],
         fontSize: 27,
      ),),
       Padding(padding: EdgeInsets.only(bottom: 30),
       child:
   Text("Lorem Ipsum, sometimes referred to as 'lipsum', is the placeholder text used in design when creating content. It helps designers plan out where the content will sit, without needing to wait for the content to be written and approved. It originally comes from a Latin text, but to today's reader, it's seen as gibberish."
  
   ,style: TextStyle(

         color: Colors.grey[300],
         fontSize: 20,
        
      ),

       textAlign: TextAlign.center
      
      )),
      Text("Cookie Policy"
   ,style: TextStyle(
         color: Colors.green,
         fontSize: 20,
         decoration: TextDecoration.underline
      ),
      
      ),
      Container( height: size.height*0.070,
      width: size.width*0.85,
      color: Colors.yellow[900],
      child: 
   
     MaterialButton(onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>GetStarted()));
     },
     child: Text("I Accept",
     style: TextStyle(
         color: Colors.black,
         fontSize: 20,
         
      ),),

     )


     ) ,
      

  
        ],
      ),
    )
    );
  }
}