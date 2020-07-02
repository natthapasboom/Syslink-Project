import 'package:flutter/material.dart';

class ChooseProject extends StatelessWidget {
  final String chooseProject;

  ChooseProject({this.chooseProject});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10),
          height: 30,
          width: 130,
          child: OutlineButton(
            onPressed: () => {},
            textColor: Colors.grey,
            borderSide: BorderSide(
                color: Colors.white, width: 1.0, style: BorderStyle.solid),
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
                          fontWeight: FontWeight.w500),
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
    );
  }
}


// import 'package:flutter/material.dart';


// void main() => runApp(ChooseProject());

// class ChooseProject extends StatefulWidget {
//   @override
//   _ChooseProjectState createState() => _ChooseProjectState();
// }