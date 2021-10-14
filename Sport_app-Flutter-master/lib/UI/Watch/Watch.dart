import 'package:flutter/material.dart';
import 'package:sportapp/UI/favourites/Matches.dart';

class Watch extends StatefulWidget {
 

  @override
  _WatchState createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor: Colors.grey[700],
      appBar: AppBar(
        elevation: 0.0,
         backgroundColor: Colors.grey[700],
        leading:  IconButton(icon: Icon(Icons.settings_outlined,size: 30,),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteMatch()));
        },
        ),
      title: Text("Watch"),
      titleSpacing: 110,
      ),
       body: SingleChildScrollView(
        child: 
          Padding(padding: EdgeInsets.only(top: 10,left: 0),child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
                height: size.height*0.30,
               
              
                decoration: BoxDecoration(
                  
                  image: DecorationImage(image:AssetImage('assets/images/news1.jpeg'),
                  fit: BoxFit.cover
                   ),
                  
               
                ),
                child:
                Padding(padding: EdgeInsets.only(left: size.width*0.030,top: 13,bottom: 15),child: 
                
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                  children: [
                    Column(
                      children: [

                     
                    Container(
                      height: 23,
                      width: 60,
                      color: Colors.black87,
                      child:Center(child: 
                       Text("> 2:30",
                      style: TextStyle(
                        color: Colors.white
                      
                      ),),
                    )),
                     ],
                    ),
                     Text("Forgot Lukaku! Inzaghi's Inter Milan a more attacking force",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      
                      ),),
                      
                  ],
                ),

              )
              ),
               Padding(padding: EdgeInsets.only(top: 15,left: 10),child: 
          
           Text("Top Stories",
                      style: TextStyle(
                        color: Colors.white,
                       
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      
                      ),)),
                       Padding(padding: EdgeInsets.only(top: 15,left: 10),child: 
                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: 
                      Row(
                        
                        children: [
                          Container(
                height: size.height*0.30,
                width: size.width*0.4,
               
              
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   
                  image: DecorationImage(image:AssetImage('assets/images/news1.jpeg'),
                  fit: BoxFit.cover
                   ),
                  
               
                ),
                child:
                Padding(padding: EdgeInsets.only(left: size.width*0.030,top: 13,bottom: 15),child: 
                
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                  children: [
                    Column(
                      children: [

                     
                    Container(
                      height: 23,
                      width: 60,
                      color: Colors.black87,
                      child:Center(child: 
                       Text("> 2:30",
                      style: TextStyle(
                        color: Colors.white
                      
                      ),),
                    )),
                     ],
                    ),
                     Text("Forgot Lukaku! Inzaghi's Inter Milan a more attacking force",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      
                      ),),
                      
                  ],
                ),

              )
              ),
              SizedBox(width: 10,),
               Container(
                height: size.height*0.30,
                width: size.width*0.4,
               
              
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   
                  image: DecorationImage(image:AssetImage('assets/images/kevin.jpeg'),
                  fit: BoxFit.cover
                   ),
                  
               
                ),
                child:
                Padding(padding: EdgeInsets.only(left: size.width*0.030,top: 13,bottom: 15),child: 
                
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                  children: [
                    Column(
                      children: [

                     
                    Container(
                      height: 23,
                      width: 60,
                      color: Colors.black87,
                      child:Center(child: 
                       Text("> 2:30",
                      style: TextStyle(
                        color: Colors.white
                      
                      ),),
                    )),
                     ],
                    ),
                     Text("Forgot Lukaku! Inzaghi's Inter Milan a more attacking force",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      
                      ),),
                      
                  ],
                ),

              )
              ),
               SizedBox(width: 10,),
                 Container(
                height: size.height*0.30,
                width: size.width*0.4,
               
              
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   
                  image: DecorationImage(image:AssetImage('assets/images/salah.jpeg'),
                  fit: BoxFit.cover
                   ),
                  
               
                ),
                child:
                Padding(padding: EdgeInsets.only(left: size.width*0.030,top: 13,bottom: 15),child: 
                
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                  children: [
                    Column(
                      children: [

                     
                    Container(
                      height: 23,
                      width: 60,
                      color: Colors.black87,
                      child:Center(child: 
                       Text("> 2:30",
                      style: TextStyle(
                        color: Colors.white
                      
                      ),),
                    )),
                     ],
                    ),
                     Text("Forgot Lukaku! Inzaghi's Inter Milan a more attacking force",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      
                      ),),
                      
                  ],
                ),

              )
              ),
                        ],
                          )
                          ) 
                            ),
                            Padding(padding: EdgeInsets.only(left: 10,top: 10),
                            child:
                            Text("New Videos",
                      style: TextStyle(
                        color: Colors.white,
                       
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      
                      ),)),
                              Padding(padding: EdgeInsets.only(top: 15,left: 10),child: 
                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: 
                      Row(
                        
                        children: [
                          Container(
                height: size.height*0.20,
                width: size.width*0.7,
               
              
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   
                  image: DecorationImage(image:AssetImage('assets/images/salah.jpeg'),
                  fit: BoxFit.cover
                   ),
                  
               
                ),
                child:
                Padding(padding: EdgeInsets.only(left: size.width*0.030,top: 13,bottom: 15),child: 
                
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                  children: [
                    Column(
                      children: [

                     
                    Container(
                      height: 23,
                      width: 60,
                      color: Colors.black87,
                      child:Center(child: 
                       Text("> 2:30",
                      style: TextStyle(
                        color: Colors.white
                      
                      ),),
                    )),
                     ],
                    ),
                     Text("Forgot Lukaku! Inzaghi's Inter Milan a more attacking force",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      
                      ),),
                      
                  ],
                ),

              )
              ),
              SizedBox(width: 10,),
              Container(
                height: size.height*0.20,
                width: size.width*0.7,
               
              
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   
                  image: DecorationImage(image:AssetImage('assets/images/news4.jpeg'),
                  fit: BoxFit.cover
                   ),
                  
               
                ),
                child:
                Padding(padding: EdgeInsets.only(left: size.width*0.030,top: 13,bottom: 15),child: 
                
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                  children: [
                    Column(
                      children: [

                     
                    Container(
                      height: 23,
                      width: 60,
                      color: Colors.black87,
                      child:Center(child: 
                       Text("> 2:30",
                      style: TextStyle(
                        color: Colors.white
                      
                      ),),
                    )),
                     ],
                    ),
                     Text("Forgot Lukaku! Inzaghi's Inter Milan a more attacking force",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      
                      ),),
                      
                  ],
                ),

              )
              ),
                        ]
                      )
                       )
                              )
        ]
        )
          )
       
        )
    );
  }
}