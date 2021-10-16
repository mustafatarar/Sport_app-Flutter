import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PtsWidget extends StatelessWidget {
   PtsWidget({
      @required this.p,
      @required this.gd,
      @required this.pts,
      
      @required this.rank,
     
      @required this.teamname,
      @required this.team1Flag,
      
   });
   String  p,gd,pts,rank,teamname,team1Flag;
  @override
  Widget build(BuildContext context) {
   Size size=MediaQuery.of(context).size;
    return 
    Padding(padding: EdgeInsets.only(left: 20,right: 10,),
     child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [

              
               Text('$rank'),
                SizedBox(
                              width: 18,
                            ),
                

               Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/$team1Flag.svg',
                              height: 15,
                              width: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('$teamname'),
                          ],
                )  ],
              ),
            
              Row(
                children: [
                   Padding(padding: EdgeInsets.only(right: 55),child:
              
                         Text('$p')),
                         Padding(padding: EdgeInsets.only(right: 45),child:
              
                         Text('$gd')),
                          Padding(padding: EdgeInsets.only(right: 10),child:
              
                         Text('$pts')),
    
                ],
              ),
              

              
              ]
     ),
     );
  }
}