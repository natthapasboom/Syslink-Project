import 'package:checkin/Push/checkin.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    // data = ModalRoute.of(context).settings.arguments;
    // print(data);

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
                              image: AssetImage("assets/person.png")),
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
                                'EEE, MMM d, ' 'yy',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Prompt',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'data',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Prompt',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Container(
                                  height: 35,
                                  width: 240,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.black,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            '  สถานที่',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Prompt',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      )
                                    ],
                                  ))
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 100,
                                    child: OutlineButton(
                                      onPressed: () => {},
                                      textColor: Colors.grey,
                                      borderSide: BorderSide(
                                          color: Colors.white,
                                          width: 1.0,
                                          style: BorderStyle.solid),
                                      child: Row(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.refresh,
                                                color: Colors.white,
                                                size: 15,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                '  Refresh',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Prompt',
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    height: 30,
                                    width: 130,
                                    child: OutlineButton(
                                      onPressed: () => {},
                                      textColor: Colors.grey,
                                      borderSide: BorderSide(
                                          color: Colors.white,
                                          width: 1.0,
                                          style: BorderStyle.solid),
                                      child: Row(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                'เลือกโครงการ',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Prompt',
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors.white,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 150, left: 280),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green[600],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.exit_to_app,
                                color: Colors.white,
                                size: 25,
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'cheched in',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Prompt',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckInPage()),
                        );
                      },
                    ),
                  ),
                ),
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
                          onPressed: () => {},
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
