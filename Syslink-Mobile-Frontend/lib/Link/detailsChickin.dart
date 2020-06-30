import 'package:flutter/material.dart';

Widget myDivider() {
  return Divider(
    height: 3,
    color: Colors.grey,
  );
}

class DetailsCheckin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: Color(0xff983643),
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0),
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 12),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Checked in',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Prompt',
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                width: double.maxFinite,
                child: Card(
                  child: Container(
                    height: 700,
                    child: Column(
                      children: <Widget>[
                        Card(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 40),
                              ),
                              Text(
                                'รูปถ่าย',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Prompt',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              InkWell(
                                onTap: () => {},
                                child: Container(
                                  margin: EdgeInsets.only(right: 20, left: 20),
                                  width: 250,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                  child: Icon(Icons.add_a_photo,
                                      size: 50, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 40),
                              ),
                              Text(
                                'หมายเหตุ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Prompt',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(right: 60, left: 60),
                        //     //padding: const EdgeInsets.all(70.0),
                        //     child: TextField(
                        //       //minLines: 5,
                        //       maxLines: 5,
                        //       autocorrect: false,
                        //       decoration: InputDecoration(
                        //         hintText: 'พิมพ์ข้อความ',
                        //         filled: true,
                        //         fillColor: Colors.grey[200],
                        //         enabledBorder: OutlineInputBorder(
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(0.0)),
                        //           borderSide: BorderSide(color: Colors.grey),
                        //         ),
                        //         focusedBorder: OutlineInputBorder(
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(0.0)),
                        //           borderSide: BorderSide(color: Colors.white),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
