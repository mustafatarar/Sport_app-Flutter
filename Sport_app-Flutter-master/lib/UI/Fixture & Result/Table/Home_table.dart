import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportapp/UI/Fixture%20&%20Result/Fixture.dart';
import 'package:sportapp/UI/Fixture%20&%20Result/Table/All.dart';
import 'package:sportapp/UI/Fixture%20&%20Result/Table/Awat_table.dart';
import 'package:sportapp/UI/Fixture%20&%20Result/Table/PTS_widget.dart';

class HomeTable extends StatefulWidget {
 

  @override
  _HomeTableState createState() => _HomeTableState();
}

class _HomeTableState extends State<HomeTable> {
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
            Padding(padding: EdgeInsets.only(left: 0,top:5 ),child: 
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
                        color: Colors.white,
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
                        color: Colors.yellow[700],
                         fontWeight: FontWeight.bold
                      
                      ),)),
                       
          ],

      
      )
      ),
        SizedBox(width: 9,),
                       Divider(
                         color: Colors.white60,
                         thickness: 0,
                       ),
       SizedBox(height: 10,),
        Padding(padding: EdgeInsets.only(left: 15,),child: 
           Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>All()));
                },
              child: 
              Container(
                height: 35,
                width: 70,
               
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: 
                
              Text("ALL",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold
                      
                      ),)))),
                      SizedBox(width: 10,),
                         GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeTable()));
                },
              child: 
              Container(
                height: 35,
                width: 70,
               
                decoration: BoxDecoration(
                    color: Colors.white,
                  border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: 
                
              Text("HOME",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      
                      ),)))),
                     
                      SizedBox(width: 10,),
                        GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AwayTable()));
                },
              child: 
              Container(
                height: 35,
                width: 70,
               
                decoration: BoxDecoration(
                   
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white54)
                ),
                child: Center(
                  child: 
                
              Text("AWAY",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold
                      
                      ),)))),
                       
          ],

      
      )),
        Padding(padding: EdgeInsets.only(left: 20,right: 10,top: 30),
     child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [

             
               Text('#',
               style: TextStyle(
                 color: Colors.white
               ),),
              
                           
                            SizedBox(
                              width: 18,
                            ),
                           
                            Text('TEAM',
               style: TextStyle(
                 color: Colors.white
               ),), ],),
                         
                        Row(children: [
                        Padding(padding: EdgeInsets.only(right: 45),child: 
                          Text('P',
               style: TextStyle(
                 color: Colors.white
               ),),
                         ),
                          Padding(padding: EdgeInsets.only(right: 35),child: 
                         Text('GD',
               style: TextStyle(
                 color: Colors.white
               ),),
                         ),
                         Text('PTS',
               style: TextStyle(
                 color: Colors.white
               ),),
                         ],
                         ),
                         

             

              
              ]
     )
     ),
     SizedBox(height: 20,),
     PtsWidget(
                           rank: '1',
                           team1Flag: "France",
                           teamname: "Moroco",
                           p: "2",
                           gd: '6',
                           pts: '6',
                         ), 
                         SizedBox(height: 4,),
                          Divider(
                color: Colors.white38,
                thickness: 0,
              ),
              SizedBox(height: 4,),
               PtsWidget(
                           rank: '2',
                           team1Flag: "Germany",
                           teamname: "Genicau_Besiua",
                           p: "2",
                           gd: '3',
                           pts: '3',
                         ), 
                         SizedBox(height: 4,),
                          Divider(
                color: Colors.white38,
                thickness: 0,
              ),
             
              SizedBox(height: 4,),
               PtsWidget(
                           rank: '3',
                           team1Flag: "Holland",
                           teamname: "Geniea",
                           p: "2",
                           gd: '0',
                           pts: '2',
                         ), 
                         SizedBox(height: 4,),
                          Divider(
                color: Colors.white38,
                thickness: 0,
              ),
               SizedBox(height: 4,),
               PtsWidget(
                           rank: '3',
                           team1Flag: "Italy",
                           teamname: "Sudan",
                           p: "2",
                           gd: '0',
                           pts: '1',
                         ), 
                           Divider(
                color: Colors.white38,
                thickness: 0,
              ),
                 SizedBox(height: 10,),
              GestureDetector(
                child: Center(
                  child: 
                Container(
                  width: size.width*0.95,
                  height: 40,
                  color: Colors.black38,
                  child:Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.rotate_90_degrees_ccw),
                      SizedBox(width: 10,),
                      Text("Rotate To View Expanded Table")
                    ],
                    ),

                  ) 
                ),
               ) )
          ]
      ) 
      )
    );
  }
}