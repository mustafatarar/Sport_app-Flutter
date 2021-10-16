import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportapp/UI/Fixture%20&%20Result/Fixture.dart';
import 'package:sportapp/UI/Fixture%20&%20Result/Result_widget.dart';
class Result extends StatefulWidget {
  

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
               SvgPicture.asset("assets/svg/France.svg",
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
         SizedBox(height: 40,),

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
                    
                  border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: 
                
              Text("FIXTURES",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
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
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(20),
                
                  border: Border.all(color: Colors.white54)
                ),
                child: Center(
                  child: 
                
              Text("RESULTS",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      
                      ),)))),
                       
          ],

      
      )
      ),
      SizedBox(height: 20,),
     GestureDetector(
                  onTap: (){
                   
                  },
                  child: 
                ResultWidget(
                 
                  eventFlag: 'France',
                  team1Flag: 'Holland',
                  team2Flag: 'Italy',
                  team1Name: 'Holland',
                  team2Name: 'Italy',
                  team1Goals: '4',
                  team2Goals: '0',
                  matchTime: "FT",
                )),
                SizedBox(height: 5,),
                 GestureDetector(
                  onTap: (){
                  
                  },
                  child: 
                ResultWidget(
                 
                  eventFlag: 'Germany',
                  team1Flag: 'Holland',
                  team2Flag: 'Germany',
                  team1Name: 'Holland',
                  team2Name: 'Italy',
                  team1Goals: '4',
                  team2Goals: '0',
                  matchTime: "FT",
                )),
          SizedBox(height: 5,),
                 GestureDetector(
                  onTap: (){
                  
                  },
                  child: 
                ResultWidget(
                 
                  eventFlag: 'Germany',
                  team1Flag: 'Holland',
                  team2Flag: 'Germany',
                  team1Name: 'SkendeBeu',
                  team2Name: 'KF Velickie Koplick',
                  team1Goals: '4',
                  team2Goals: '0',
                  matchTime: "FT",
                )),
                SizedBox(height: 5,),
                 GestureDetector(
                  onTap: (){
                  
                  },
                  child: 
                ResultWidget(
                 
                  eventFlag: 'Germany',
                  team1Flag: 'France',
                  team2Flag: 'Holland',
                  team1Name: 'Partizni',
                  team2Name: 'Terbuni Puke',
                  team1Goals: '3',
                  team2Goals: '2',
                  matchTime: "FT",
                )),
                SizedBox(height: 5,),
                 GestureDetector(
                  onTap: (){
                  
                  },
                  child: 
                ResultWidget(
                 
                  eventFlag: 'Germany',
                  team1Flag: 'France',
                  team2Flag: 'Germany',
                  team1Name: 'Laci',
                  team2Name: 'Butrinti Sarande',
                  team1Goals: '1',
                  team2Goals: '0',
                  matchTime: "FT",
                )),
                SizedBox(height: 5,),
                 GestureDetector(
                  onTap: (){
                  
                  },
                  child: 
                ResultWidget(
                 
                  eventFlag: 'Germany',
                  team1Flag: 'Italy',
                  team2Flag: 'France',
                  team1Name: 'Kukasi',
                  team2Name: 'Butrini sarande',
                  team1Goals: '2',
                  team2Goals: '0',
                  matchTime: "FT",
                )),
        
        

        
        
        
          
          ]
        )
      )
    );
  }
}