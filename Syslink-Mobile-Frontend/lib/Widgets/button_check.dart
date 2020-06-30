import 'package:checkin/Link/checkin.dart';
import 'package:flutter/material.dart';

class ButtonCheck extends StatelessWidget {
  final String btnCheck;

  ButtonCheck({this.btnCheck});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              MaterialPageRoute(builder: (context) => CheckInPage()),
            );
          },
        ),
      ),
    );
  }
}
