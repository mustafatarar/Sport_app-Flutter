import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportapp/UI/values/my_colors.dart';

class ResultWidget extends StatelessWidget {
  ResultWidget(
{
      @required this.eventFlag,
     
      @required this.matchTime,
      @required this.team1Flag,
      @required this.team1Goals,
      @required this.team1Name,
      @required this.team2Flag,
      @required this.team2Goals,
      @required this.team2Name});
  String  eventFlag;
  String team1Name, team2Name, team1Flag, team2Flag, matchTime;
  String team1Goals, team2Goals;

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
         
         
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 16),
                      child: Text('$matchTime'),
                    ),
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
                             SizedBox(
                              width: 8,
                             ),
                             Container(
                               height: 15,
                               width: 40,
                               color: Colors.white60,
                               child: Center(
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text("AGG",
                                     style: TextStyle(
                                       fontSize: 10,
                                       color: Colors.black87
                                     ),
                                     ),
                                     Icon(Icons.done,color: Colors.black,size: 12,)

                                   ],
                                 ),
                               ),
                             )
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
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '$team1Goals',
                          style: TextStyle(fontSize: 14, color: MyColors.white),
                        ),
                        Text(
                          '$team2Goals',
                          style: TextStyle(fontSize: 14, color: MyColors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.star_border,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
