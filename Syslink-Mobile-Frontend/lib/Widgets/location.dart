import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  final String location;

  Location({this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 240,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(4)),
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
      ),
    );
  }
}
