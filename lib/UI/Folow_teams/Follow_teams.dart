import 'package:flutter/material.dart';
import 'package:sportapp/UI/Folow_teams/Follow_player.dart';
import 'package:sportapp/UI/values/my_svgs.dart';
import 'package:sportapp/widget/Select_team_class.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FollowTeam extends StatefulWidget {
  

  @override
  _FollowTeamState createState() => _FollowTeamState();
}

class _FollowTeamState extends State<FollowTeam> {
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[700],

      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 25,left: 20),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

            
            Text("1 of 3",
            style: TextStyle(
              fontSize: 20,
               fontWeight: FontWeight.w400,
              color: Colors.white
            ),
            ),
            GestureDetector(
              onTap: (){},
              child: 
            
             Text("Skip",
            style: TextStyle(
              fontSize: 20,
               fontWeight: FontWeight.w400,
              color: Colors.white
            ),
             )
            ),
            ],),
            SizedBox(height: 2,),
               Text("Follow Teams",
            style: TextStyle(
              fontFamily: "inter",
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white
            ),
            ),
             SizedBox(height: 4,),
              Text("Tap * to follow one or more teams ,These will appear in your Faveriotes tab",
            style: TextStyle(
              fontFamily: "inter",
              fontWeight: FontWeight.w400,
              
              fontSize: 17,
              color: Colors.white
            ),
            ),
             SizedBox(height: 18,),
            
            Container(
              width: size.width*0.90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: 
              
            
            TextField(

            cursorColor: Colors.white,
            decoration: InputDecoration(

                hintText: " Search Teams",
                hintStyle: TextStyle(
                  color: Colors.black
                ),
                border: InputBorder.none,
                prefixIcon: IconButton(
                  icon: Icon(Icons.search,color: Colors.black),
                  
                  onPressed: () {},
                )),
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          
        
            ),
             SizedBox(height: 11,),
              Text("POPULAR",
            style: TextStyle(
              fontSize: 17,
               fontWeight: FontWeight.w400,
              color: Colors.white
            ),
            ),
       SizedBox(height: 8,),
              Container(
       height: size.height*0.090,
              width: size.width*0.90,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10)
              ),
              child:
              Padding(padding: EdgeInsets.only(left: 8,right: 2),child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                 
                  Row(
       
           
         children: [
         SvgPicture.asset("assets/svg/France.svg",
         height: 20,
         width: 20,
         
         ),
       SizedBox( width: size.width*0.050,),
      
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
         
         children: [
            Text("Manchester United",
  
  style: TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
    fontSize: 17,
    color: Color(0xffFFFFFF)
  ),
         ),
   
     Text(
  'England',
  style: TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    
    fontSize: 14,
   
    color: Color(0xffFFFFFF)
  ),
     )
          ],

       
       ),
        ],
       ),
       Padding(padding: EdgeInsets.only(left: size.width*0.2),child: 
         
       Row(
         mainAxisAlignment: MainAxisAlignment.end,
         
         children: [
          
          IconButton(
            icon: Icon(Icons.star_border,
            color: Colors.white,
            size: 30,
            ), 
            onPressed: (){
              
            }

          )
       
         ],
       )
               )        ]
       )  )
              ),   

      
        
             SizedBox(height: 5,),
              Container(
       height: size.height*0.090,
              width: size.width*0.90,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10)
              ),
              child:
              Padding(padding: EdgeInsets.only(left: 8,right: 2),child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                 
                  Row(
       
           
         children: [
         SvgPicture.asset("assets/svg/Spain.svg",
         height: 20,
         width: 20,
         
         ),
       SizedBox( width: size.width*0.050,),
      
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
         
         children: [
            Text("Liverpool",
  
  style: TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
    fontSize: 17,
    color: Color(0xffFFFFFF)
  ),
         ),
   
     Text(
  'England',
  style: TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    
    fontSize: 14,
   
    color: Color(0xffFFFFFF)
  ),
     )
          ],

       
       ),
        ],
       ),
       Padding(padding: EdgeInsets.only(left: size.width*0.2),child: 
         
       Row(
         mainAxisAlignment: MainAxisAlignment.end,
         
         children: [
          
          IconButton(
            icon: Icon(Icons.star_border,
            color: Colors.white,
            size: 30,
            ), 
            onPressed: (){
              
            }

          )
       
         ],
       ) 

      
        ) ],
              ))),
               SizedBox(height: 5,),
              Container(
       height: size.height*0.090,
              width: size.width*0.90,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10)
              ),
              child:
              Padding(padding: EdgeInsets.only(left: 8,right: 2),child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                 
                  Row(
       
           
         children: [
         SvgPicture.asset("assets/svg/Holland.svg",
         height: 20,
         width: 20,
         
         ),
       SizedBox( width: size.width*0.050,),
      
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
         
         children: [
            Text("Chelsea",
  
  style: TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
    fontSize: 17,
    color: Color(0xffFFFFFF)
  ),
         ),
   
     Text(
  'England',
  style: TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    
    fontSize: 14,
   
    color: Color(0xffFFFFFF)
  ),
     )
          ],

       
       ),
        ],
       ),
       Padding(padding: EdgeInsets.only(left: size.width*0.2),child: 
         
       Row(
         mainAxisAlignment: MainAxisAlignment.end,
         
         children: [
          
          IconButton(
            icon: Icon(Icons.star_border,
            color: Colors.white,
            size: 30,
            ), 
            onPressed: (){
              
            }

          )
       
         ],
       ) 

      
        ) ],
              ),

     
              

            
               )),
                SizedBox(height: 5,),
              Container(
       height: size.height*0.090,
              width: size.width*0.90,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10)
              ),
              child:
              Padding(padding: EdgeInsets.only(left: 8,right: 2),child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                 
                  Row(
       
           
         children: [
         SvgPicture.asset("assets/svg/Italy.svg",
         height: 20,
         width: 20,
         
         ),
       SizedBox( width: size.width*0.050,),
      
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
         
         children: [
            Text("Manchester City",
  
  style: TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
    fontSize: 17,
    color: Color(0xffFFFFFF)
  ),
         ),
   
     Text(
  'England',
  style: TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    
    fontSize: 14,
   
    color: Color(0xffFFFFFF)
  ),
     )
          ],

       
       ),
        ],
       ),
       Padding(padding: EdgeInsets.only(left: size.width*0.2),child: 
         
       Row(
         mainAxisAlignment: MainAxisAlignment.end,
         
         children: [
          
          IconButton(
            icon: Icon(Icons.star_border,
            color: Colors.white,
            size: 30,
            ), 
            onPressed: (){
              
            }

          )
       
         ],
       ) 

      
        ) ],
              ))),
               SizedBox(height: 5,),
              Container(
       height: size.height*0.090,
              width: size.width*0.90,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10)
              ),
              child:
              Padding(padding: EdgeInsets.only(left: 8,right: 2),child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                 
                  Row(
       
           
         children: [
         SvgPicture.asset("assets/svg/Germany.svg",
         height: 20,
         width: 20,
         
         ),
       SizedBox( width: size.width*0.050,),
      
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
         
         children: [
            Text("Germany",
  
  style: TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
    fontSize: 17,
    color: Color(0xffFFFFFF)
  ),
         ),
   
     Text(
  'England',
  style: TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    
    fontSize: 14,
   
    color: Color(0xffFFFFFF)
  ),
     )
          ],

       
       ),
        ],
       ),
       Padding(padding: EdgeInsets.only(left: size.width*0.2),child: 
         
       Row(
         mainAxisAlignment: MainAxisAlignment.end,
         
         children: [
          
          IconButton(
            icon: Icon(Icons.star_border,
            color: Colors.white,
            size: 30,
            ), 
            onPressed: (){
              
            }

          )
       
         ],
       ) 

      
        ) ],
              ))),
              SizedBox(height: 50,),

Container( height: size.height*0.070,
      width: size.width*0.9,

      
      decoration: BoxDecoration(
        color: Colors.yellow[900],
        borderRadius: BorderRadius.circular(10)
      ),
      child: 
   
     MaterialButton(onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>FollowPlayer()));
     },
     child: Text("Next",
     style: TextStyle(
         color: Colors.black,
         fontSize: 20,
         
      ),),

     )


     ) ,
      

                ],
        ),
      ),
      
    );
  }
}