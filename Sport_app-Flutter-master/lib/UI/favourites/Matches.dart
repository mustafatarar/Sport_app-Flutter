import 'package:flutter/material.dart';
import 'package:sportapp/UI/Fixture%20&%20Result/Fixture.dart';
import 'package:sportapp/UI/favourites/Competition.dart';
import 'package:sportapp/UI/favourites/Teams.dart';

class FavouriteMatch extends StatefulWidget {
  

  @override
  _FavouriteMatchState createState() => _FavouriteMatchState();
}

class _FavouriteMatchState extends State<FavouriteMatch> {
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
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Fixture()));
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
                        color: Colors.yellow[700],
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
                        color: Colors.white,
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
        SizedBox(height: 210,),
        Center(child:
        Column(
          
          children: [
             Text("Tap * to add a Match to Favourite",
                      style: TextStyle(
                         fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      
                      ),),
                      SizedBox(height: 30,),
                      Container(
                        height: 80,
                        width: size.width*0.72,
                      
                       decoration: BoxDecoration(
                          color: Colors.black,
                         borderRadius: BorderRadius.circular(10)
                       ),
                       child: Row(
                         children: [
                          Container(
  width: 10,
  height: 50,
  color: Colors.yellow[700]
),
SizedBox(width: 20,),
 Text("1'",
                      style: TextStyle(
                         fontSize: 17,
                        color: Colors.yellow[700],
                        fontWeight: FontWeight.bold
                      
                      ),),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Team A",
                      style: TextStyle(
                         fontSize: 17,
                        color: Colors.white70,
                       
                      
                      ),),
                     
                          Text("Team B",
                      style: TextStyle(
                         fontSize: 17,
                        color: Colors.white70,
                       
                      
                      ),),
                        ],
                      ),
                      SizedBox(width: 100,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("0",
                      style: TextStyle(
                         fontSize: 17,
                        color: Colors.white70,
                       
                      
                      ),),
                     
                          Text("0",
                      style: TextStyle(
                         fontSize: 17,
                        color: Colors.white70,
                       
                      
                      ),),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Icon(Icons.star,
                      color: Colors.yellow[700],
                      size: 30,
                      )
                         ],
                       ),
                      )

          ],
        ))
        ],
      ),
      )

    );
  }
}