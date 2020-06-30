//import 'package:checkin/Link/detailsChickin.dart';
import 'package:flutter/material.dart';

class CheckinHistory extends StatelessWidget {
  final String historyCheckin;

  CheckinHistory({this.historyCheckin});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onPressed: () => {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => DetailsCheckin()),
                    // )
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
