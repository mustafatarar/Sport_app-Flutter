
import 'package:flutter/material.dart';
import 'package:sportapp/UI/Folow_teams/Follow_teams.dart';
import 'package:sportapp/UI/home_page/home_page.dart';

class GetStarted extends StatefulWidget {
  

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return 
    
    Container(
      decoration: BoxDecoration(
        color: Colors.grey,
       image: DecorationImage(image: AssetImage('assets/images/bg.jpg'),
       
       fit: BoxFit.fill,
       
       
       
       )
      ),
      child:
      Center(
        child: 
      
       Column(

        
        children: [
         SizedBox(height: 470,),
           Text("WELCOME",
           style: TextStyle(
           color: Colors.white,
            fontFamily: 'inter',
         fontSize: 50,
         decoration: TextDecoration.none,
         fontWeight: FontWeight.bold


      )),
       SizedBox(height: 20,),
        Text("Never Miss a goal-Get Live Match",
           style: TextStyle(
           color: Colors.white,
         fontSize: 17,
         fontFamily: 'inter',
         decoration: TextDecoration.none,
        


      )),
        Text("alerts,Fixtures and Result For You",
           style: TextStyle(
           color: Colors.white,
         fontSize: 17,
         fontFamily: 'inter',
         decoration: TextDecoration.none,
        


      )),
       Text("Faveriot team and Competiton",
           style: TextStyle(
           color: Colors.white,
         fontSize: 17,
         fontFamily: 'inter',
         decoration: TextDecoration.none,
        


      )),
        SizedBox(height: 50,),

Container( height: size.height*0.070,
      width: size.width*0.85,
      color: Colors.yellow[900],
      child: 
   
     MaterialButton(onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>FollowTeam()));
     },
     child: Text("Get Started",
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