import 'package:checkin/Page/Login.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ProfilePage extends StatelessWidget {
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
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 200,
                color: Color(0xff983643),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 130, left: 10, right: 10),
            width: double.maxFinite,
            child: Card(
              child: Container(
                height: 200,
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              // Container(
                              //   child: OutlineButton(
                              //     onPressed: () => {},
                              //     textColor: Colors.black,
                              //     borderSide: BorderSide(
                              //         color: Color(0xff983643),
                              //         width: 1.0,
                              //         style: BorderStyle.solid),
                              //     child: Text(
                              //       'edit',
                              //       style: TextStyle(
                              //           color: Colors.black,
                              //           fontFamily: 'Prompt',
                              //           fontSize: 16,
                              //           fontWeight: FontWeight.w300),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'username surname',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Prompt',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Engineer',
                                  style: TextStyle(
                                      color: Color(0xff983643),
                                      fontFamily: 'Prompt',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'รหัสพนักงาน',
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontFamily: 'Prompt',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(
                                '  6000001',
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontFamily: 'Prompt',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.only(top: 70, left: 150),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage("assets/person.png"))),
              ),
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(top: 150, left: 225),
                decoration: BoxDecoration(
                  color: Color(0xff983643),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  onTap: () => {},
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 340, left: 10, right: 10),
            width: double.maxFinite,
            child: InkWell(
              onTap: () => {},
              child: Card(
                child: Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.adjust,
                        color: Color(0xff983643),
                        size: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                      ),
                      Text(
                        "นโยบาย",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Prompt',
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                      Padding(
                        padding: EdgeInsets.all(100),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 430, left: 10, right: 10),
            width: double.maxFinite,
            child: InkWell(
              onTap: () => {},
              child: Card(
                child: Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Transform(
                        alignment: Alignment.bottomCenter,
                        transform: Matrix4.rotationY(math.pi),
                        child: Icon(
                          Icons.exit_to_app,
                          color: Color(0xff983643),
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                      ),
                      Text(
                        "ออกจากระบบ",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Prompt',
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                      Padding(
                        padding: EdgeInsets.all(80),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
