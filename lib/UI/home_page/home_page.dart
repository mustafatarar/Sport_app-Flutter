import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sportapp/UI/calendar_date_page/calendar_date_page.dart';
import 'package:sportapp/UI/home_page/components/football_event_widget.dart';
import 'package:sportapp/UI/values/values.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

bool todaySelected = true,
    yesterdaySelected = false,
    beforeYesterdaySelected = false,
    tomorrowSelected = false,
    tomorrowAfterSelected = false,
    liveSelected = false;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    DateTime yesterday = today.subtract(Duration(days: 1));
    DateTime beforeYesterday = today.subtract(Duration(days: 2));
    DateTime tomorrow = today.add(Duration(days: 1));
    DateTime tomorrowAfter = today.add(Duration(days: 2));

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[700],
        title: Text(Strings.home_title),
      ),
      backgroundColor: Colors.grey[700],
      body: SingleChildScrollView(
        child: (Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      todaySelected = false;
                      yesterdaySelected = false;
                      beforeYesterdaySelected = false;
                      tomorrowSelected = false;
                      tomorrowAfterSelected = false;
                      liveSelected = true;
                    });
                  },
                  child: liveWidget(
                    selected: liveSelected,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      todaySelected = false;
                      yesterdaySelected = false;
                      beforeYesterdaySelected = true;
                      tomorrowSelected = false;
                      tomorrowAfterSelected = false;
                      liveSelected = false;
                    });
                  },
                  child: DateDayWidget(
                    date: beforeYesterday.day.toString(),
                    day: getWeekday(dayNumber: beforeYesterday.weekday),
                    month: getMonthName(beforeYesterday.month),
                    selected: beforeYesterdaySelected,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      todaySelected = false;
                      yesterdaySelected = true;
                      beforeYesterdaySelected = false;
                      tomorrowSelected = false;
                      tomorrowAfterSelected = false;
                      liveSelected = false;
                    });
                  },
                  child: DateDayWidget(
                    date: yesterday.day.toString(),
                    day: getWeekday(dayNumber: yesterday.weekday),
                    month: getMonthName(yesterday.month),
                    selected: yesterdaySelected,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      todaySelected = true;
                      yesterdaySelected = false;
                      beforeYesterdaySelected = false;
                      tomorrowSelected = false;
                      tomorrowAfterSelected = false;
                      liveSelected = false;
                    });
                  },
                  child: DateDayWidget(
                    date: today.day.toString(),
                    day: "TODAY",
                    month: getMonthName(today.month),
                    selected: todaySelected,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      todaySelected = false;
                      yesterdaySelected = false;
                      beforeYesterdaySelected = false;
                      tomorrowSelected = true;
                      tomorrowAfterSelected = false;
                      liveSelected = false;
                    });
                  },
                  child: DateDayWidget(
                    date: tomorrow.day.toString(),
                    day: getWeekday(dayNumber: tomorrow.weekday),
                    month: getMonthName(tomorrow.month),
                    selected: tomorrowSelected,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      todaySelected = false;
                      yesterdaySelected = false;
                      beforeYesterdaySelected = false;
                      tomorrowSelected = false;
                      tomorrowAfterSelected = true;
                      liveSelected = false;
                    });
                  },
                  child: DateDayWidget(
                    date: tomorrowAfter.day.toString(),
                    day: getWeekday(dayNumber: tomorrowAfter.weekday),
                    month: getMonthName(tomorrowAfter.month),
                    selected: tomorrowAfterSelected,
                  ),
                ),
                /*GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CalendarDatePage()));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        color: MyColors.grey300,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: MyColors.grey300,
                      )
                    ],
                  ),
                ),*/
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 6),
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: MyColors.white,
            ),
            Column(
              children: [
                FootballEventWidget(
                  eventName: 'World Cup',
                  eventFlag: 'France',
                  eventRound: 'CAF Qualification: 2nd Round: Group I',
                  team1Flag: 'Holland',
                  team2Flag: 'Italy',
                  team1Name: 'Holland',
                  team2Name: 'Italy',
                  team1Goals: '1',
                  team2Goals: '2',
                  matchTime: "FT",
                ),
                FootballEventWidget(
                  eventName: 'England',
                  eventFlag: 'Germany',
                  eventRound: 'EFL Trophy North: Group F',
                  team1Flag: 'Spain',
                  team2Flag: 'France',
                  team1Name: 'Sunderland',
                  team2Name: 'Manchester United',
                  team1Goals: '',
                  team2Goals: '',
                  matchTime: "23:00",
                ),
                FootballEventWidget(
                  eventName: 'England',
                  eventFlag: 'Germany',
                  eventRound: 'EFL Trophy North: Group E',
                  team1Flag: 'Holland',
                  team2Flag: 'Italy',
                  team1Name: 'Holland',
                  team2Name: 'Italy',
                  team1Goals: '',
                  team2Goals: '',
                  matchTime: "23:00",
                ),
                FootballEventWidget(
                  eventName: 'World Cup',
                  eventFlag: 'France',
                  eventRound: 'CAF Qualification: 2nd Round: Group I',
                  team1Flag: 'Holland',
                  team2Flag: 'Italy',
                  team1Name: 'Holland',
                  team2Name: 'Italy',
                  team1Goals: '1',
                  team2Goals: '2',
                  matchTime: "FT",
                ),
                FootballEventWidget(
                  eventName: 'England',
                  eventFlag: 'Germany',
                  eventRound: 'EFL Trophy North: Group F',
                  team1Flag: 'Spain',
                  team2Flag: 'France',
                  team1Name: 'Sunderland',
                  team2Name: 'Manchester United',
                  team1Goals: '',
                  team2Goals: '',
                  matchTime: "23:00",
                ),
                FootballEventWidget(
                  eventName: 'England',
                  eventFlag: 'Germany',
                  eventRound: 'EFL Trophy North: Group E',
                  team1Flag: 'Holland',
                  team2Flag: 'Italy',
                  team1Name: 'Holland',
                  team2Name: 'Italy',
                  team1Goals: '',
                  team2Goals: '',
                  matchTime: "23:00",
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

class DateDayWidget extends StatefulWidget {
  DateDayWidget({
    @required this.date,
    @required this.day,
    @required this.selected,
    @required this.month,
  });
  String date, day, month;
  bool selected;
  @override
  _DateDayWidgetState createState() => _DateDayWidgetState();
}

class _DateDayWidgetState extends State<DateDayWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget.selected
              ? Text(widget.day,
                  style: TextStyle(color: MyColors.yellow900, fontSize: 10))
              : Text(widget.day,
                  style: TextStyle(color: MyColors.grey300, fontSize: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.selected
                  ? Text(
                      widget.date,
                      style: TextStyle(color: MyColors.yellow900, fontSize: 8),
                    )
                  : Text(
                      widget.date,
                      style: TextStyle(color: MyColors.grey300, fontSize: 8),
                    ),
              SizedBox(
                width: 2,
              ),
              widget.selected
                  ? Text(
                      widget.month,
                      style: TextStyle(color: MyColors.yellow900, fontSize: 8),
                    )
                  : Text(
                      widget.month,
                      style: TextStyle(color: MyColors.grey300, fontSize: 8),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}

class liveWidget extends StatelessWidget {
  liveWidget({@required this.selected});
  bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: selected ? MyColors.yellow900 : MyColors.grey300,
          borderRadius: BorderRadius.circular(4)),
      height: 20,
      width: 30,
      child: Center(
        child: selected
            ? Text(
                'LIVE',
                style: TextStyle(color: MyColors.black, fontSize: 8),
              )
            : Text(
                "LIVE",
                style: TextStyle(color: MyColors.white, fontSize: 8),
              ),
      ),
    );
  }
}

String getWeekday({int dayNumber}) {
  switch (dayNumber) {
    case 1:
      return 'MON';
    case 2:
      return 'TUE';
    case 3:
      return 'WED';
    case 4:
      return 'THU';
    case 5:
      return 'FRI';
    case 6:
      return 'SAT';
    case 7:
      return 'SUN';
    default:
      return 'ERR';
  }
}

String getMonthName(int monthNumber) {
  switch (monthNumber) {
    case 1:
      return 'JAN';
    case 2:
      return 'FEB';
    case 3:
      return 'MAR';
    case 4:
      return 'APR';
    case 5:
      return 'MAY';
    case 6:
      return 'JUN';
    case 7:
      return 'JUL';
    case 8:
      return 'AUG';
    case 9:
      return 'SEP';
    case 10:
      return 'OCT';
    case 11:
      return 'NOV';
    case 12:
      return 'DEC';
    default:
      return 'ERR';
  }
}
