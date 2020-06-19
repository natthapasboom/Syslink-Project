import 'package:checkin/Push/detailsChickin.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

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
            //SizedBox(height: 10),
            Container(
              child: Card(
                child: Container(
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 30),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Transform(
                            alignment: Alignment.bottomCenter,
                            transform: Matrix4.rotationY(math.pi),
                            child: Icon(
                              Icons.exit_to_app,
                              color: Colors.white,
                              size: 25,
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'เวลา',
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontFamily: 'Prompt',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  '  10.00',
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontFamily: 'Prompt',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'สถานที่',
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontFamily: 'Prompt',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  '  LIFE Lad Prao',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Prompt',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon:
                              Icon(Icons.arrow_forward_ios, color: Colors.grey),
                          onPressed: () => {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Card(
                child: Container(
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.green[400],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.exit_to_app,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'เวลา',
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontFamily: 'Prompt',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  '  10.00',
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontFamily: 'Prompt',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'สถานที่',
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontFamily: 'Prompt',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  '  LIFE Lad Prao',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Prompt',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon:
                              Icon(Icons.arrow_forward_ios, color: Colors.grey),
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsCheckin()),
                            )
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
