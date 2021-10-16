
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportapp/UI/values/my_colors.dart';

class FixtureWidget extends StatelessWidget {
  FixtureWidget(
      {@required this.eventName,
      @required this.eventFlag,
      @required this.eventRound,
      @required this.matchTime,
      @required this.team1Flag,
      @required this.date,
      
      @required this.team1Name,
      @required this.team2Flag,
     
      @required this.team2Name});
  String eventName, eventFlag, eventRound,date;
  String team1Name, team2Name, team1Flag, team2Flag, matchTime;
  String team1Goals, team2Goals;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.only(left: 10),child: 
          Container(
            width: size.width*0.95,
            
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 16),
                      child:
                      Column(
                       
                        children: [
                           Text('$matchTime'),
                            Text('$date'),

                        ],
                      )
                      
                      
                    ),
                    SizedBox(width:10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/$team1Flag.svg',
                              height: 15,
                              width: 25,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('$team1Name'),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/$team2Flag.svg',
                              height: 15,
                              width: 25,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('$team2Name'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                
                  
                    GestureDetector(
                      child: Icon(
                        Icons.star_border,
                        size: 30,
                        
                      ),
                    ),
                  ],
                
            ),
          )
              )],
      
    )]);
  }
}
