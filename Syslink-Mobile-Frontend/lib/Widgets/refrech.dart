import 'package:flutter/material.dart';

class Refrech extends StatelessWidget {
  final String refrechLocation;

  Refrech({this.refrechLocation});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 30,
          width: 100,
          child: OutlineButton(
            onPressed: () => {},
            textColor: Colors.grey,
            borderSide: BorderSide(
                color: Colors.white, width: 1.0, style: BorderStyle.solid),
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
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}



