import 'package:flutter/material.dart';

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
      
    );
  }
}