import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportapp/UI/Fixture%20&%20Result/Fixture_widget.dart';
import 'package:sportapp/UI/Fixture%20&%20Result/Result.dart';
import 'package:sportapp/UI/Fixture%20&%20Result/Table/All.dart';

class Fixture extends StatefulWidget {
  

  @override
  _FixtureState createState() => _FixtureState();
}

class _FixtureState extends State<Fixture> {
  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        elevation: 0.0,
         backgroundColor: Colors.grey[700],
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios,size: 20,),
        onPressed: (){
          Navigator.pop(context);
        },
        
        ),
        actions: [
             IconButton(icon: Icon(Icons.star_border,size: 30,),
        onPressed: (){
          Navigator.pop(context);
        },
             )
        ],
     
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 0,top: 5),child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               SvgPicture.asset("assets/svg/Spain.svg",
         height: 20,
         width: 20,
         
         ),
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("CAF Qulaification:2nd Round:Group1 ",
  
  style: TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
    fontSize: 17,
    color: Color(0xffFFFFFF)
  ),
         ),
           Text("World Cup ",
  
  style: TextStyle(
    fontFamily: 'Inter',
   
    fontSize: 14,
    color: Colors.white70
  ),
              )
   
              ],
            ),

           ],
         ),

          ),

          SizedBox(height: 30,),

          Padding(padding: EdgeInsets.only(left: 70,right: 70),child: 
           Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Fixture()));
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>All()));
                },
              child: 
                      Text("Table",
                      style: TextStyle(
                         fontSize: 17,
                        color: Colors.white,
                         fontWeight: FontWeight.bold
                      
                      ),)),
                       
          ],

      
      )),
        SizedBox(width: 5,),
                       Divider(
                         color: Colors.white60,
                         thickness: 0,
                       ),
       SizedBox(height: 10,),

          Padding(padding: EdgeInsets.only(left: 20,),child: 
           Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Fixture()));
                },
              child: 
              Container(
                height: 35,
                width: 100,
               
                decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: 
                
              Text("FIXTURES",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      
                      ),)))),
                     
                      SizedBox(width: 10,),
                        GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Result()));
                },
              child: 
              Container(
                height: 35,
                width: 100,
               
                decoration: BoxDecoration(
                   
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white54)
                ),
                child: Center(
                  child: 
                
              Text("RESULTS",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold
                      
                      ),)))),
                       
          ],

      
      )),
          SizedBox(height: 20,),
          FixtureWidget(
           eventName: 'World Cup',
                  eventFlag: 'Germany',
                  eventRound: 'CAF Qualification: 2nd Round: Group I',
                  team1Flag: 'Holland',
                  team2Flag: 'Italy',
                  team1Name: 'Holland',
                  team2Name: 'Italy',
                  date: '14 Oct',
                  
                  matchTime: "16:30",
          ),
           SizedBox(height: 5,),
          FixtureWidget(
           eventName: 'World Cup',
                  eventFlag: 'France',
                  eventRound: 'CAF Qualification: 2nd Round: Group I',
                  team1Flag: 'Holland',
                  team2Flag: 'Italy',
                  team1Name: 'Sudan',
                  team2Name: 'Moroco',
                  date: '18 Oct',
                  
                  matchTime: "16:30",
          ),
           SizedBox(height: 5,),
          FixtureWidget(
           eventName: 'World Cup',
                  eventFlag: 'France',
                  eventRound: 'CAF Qualification: 2nd Round: Group I',
                  team1Flag: 'Holland',
                  team2Flag: 'Italy',
                  team1Name: 'Genuine_Besuia',
                  team2Name: 'Sudan',
                  date: '12 Oct',
                  
                  matchTime: "16:30",
          ),
          SizedBox(height: 5,),
           FixtureWidget(
           eventName: 'World Cup',
                  eventFlag: 'France',
                  eventRound: 'CAF Qualification: 2nd Round: Group I',
                  team1Flag: 'Holland',
                  team2Flag: 'Italy',
                  team1Name: 'Moroco',
                  team2Name: 'Guinea',
                  date: '23 Oct',
                  
                  matchTime: "16:30",
          )
         


              ],
        ),
      ),
      
    );
  }
}