

import 'package:flutter/material.dart';
import 'package:sportapp/UI/favourites/Matches.dart';
import 'package:sportapp/UI/favourites/Teams.dart';

class Competiton extends StatefulWidget {
  

  @override
  _CompetitonState createState() => _CompetitonState();
}

class _CompetitonState extends State<Competiton> {
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
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Competiton()));
        },
        
        ),
      title: Text("Favourites"),
      titleSpacing: 90,
      actions: [
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.search),
          )
      ],
      ),
      body: Padding(padding: EdgeInsets.only(top: 10),child: 
      Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteMatch()));
                },
              child: 
              Text("Matches",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                         fontWeight: FontWeight.bold
                      
                      ),)),
                       GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Competiton()));
                },
              child: 
                      Text("Competiton",
                      style: TextStyle(
                         fontSize: 17,
                        color: Colors.yellow[800],
                         fontWeight: FontWeight.bold
                      
                      ),)),
                       GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteTeam()));
                },
              child: 
                      Text("Teams",
                      style: TextStyle(
                         fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      
                      ),))
          ],

      
      ),
      SizedBox(height: 20,),
       GestureDetector(
              onTap: (){
                
                },
              child: 
    Container(
      height: 50,
      width: size.width*0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.white60)
      ),
      child:Center(
        child: 
        
             Text("Add Competitions +",
                      style: TextStyle(
                         fontSize: 17,
                        color: Colors.white70,
                       
                      
                      ),)
                    

         
        ),
      ) 
    
    ) ]
      )  ),
      
    );
  }
}