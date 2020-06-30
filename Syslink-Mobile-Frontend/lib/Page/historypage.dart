//import 'package:checkin/Push/detailsChickin.dart';
import 'package:checkin/widgets/chechout_history.dart';
import 'package:checkin/widgets/checkin_history.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 40, left: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    'ประวัติการทำงาน',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Prompt',
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'วันนี้',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Prompt',
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
            CheckoutHistory(),
            CheckinHistory(),
          ],
        ),
      ),
    );
  }
}
