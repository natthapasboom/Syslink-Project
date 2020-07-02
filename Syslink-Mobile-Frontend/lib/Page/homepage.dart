import 'package:checkin/DateTime/hexClock.dart';
//import 'package:checkin/Page/Login.dart';
import 'package:checkin/Widgets/button_check.dart';
import 'package:checkin/Widgets/checkin_card.dart';
import 'package:checkin/Widgets/checkout_card.dart';
import 'package:checkin/Widgets/choose_project.dart';
import 'package:checkin/Widgets/location.dart';
import 'package:checkin/Widgets/refrech.dart';
import 'package:flutter/material.dart';
import 'package:buddhist_datetime_dateformat/buddhist_datetime_dateformat.dart';
// import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //bool loggedIn = false;

  // @override
  // void initState() {
  //   if (!loggedIn) {
  //     Navigator.of(context).pushAndRemoveUntil(
  //         MaterialPageRoute(builder: (context) => LoginPage()),
  //         (Route<dynamic> route) => false);
  //   }
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    //var toShow = now.yearInBuddhistCalendar;

    var formatter = DateFormat.yMMMMEEEEd();
    // var showDate = formatter.formatInBuddhistCalendarThai(now);
    var _showDate = formatter.formatInBuddhistCalendarThai(now);

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset(
            'assets/syslink.png',
            width: 120,
            height: 120,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage("assets/person.png"),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'username  surname',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Prompt',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: double.maxFinite,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color(0xff983643),
                    child: Container(
                      height: 200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "$_showDate",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Prompt',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SimpleClock(),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Location(),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: <Widget>[
                              Refrech(),
                              ChooseProject(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ButtonCheck(),
              ],
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    'รายการวันนี้',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Prompt',
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            CheckoutCard(),
            CheckinCard(),
          ],
        ),
      ),
    );
  }
}
