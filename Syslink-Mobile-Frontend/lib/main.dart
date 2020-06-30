import 'package:checkin/Page/Login.dart';
import 'package:checkin/Page/homepage.dart';
// import 'package:checkin/Page/historypage.dart';
// import 'package:checkin/Page/homepage.dart';
// import 'package:checkin/Page/leavepage.dart';
// import 'package:checkin/Page/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  SharedPreferences sharedPreferences;
  // int _currentIndex = 0;

  // final _pageActive = [
  //   HomePage(),
  //   LeavePage(),
  //   HistoryPage(),
  //   ProfilePage(),
  // ];

  @override
  void initState(){
    super.initState();
    chechLoginStatus();
  }

  chechLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();

    if(sharedPreferences.getString("token") == null) {
      Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
              (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      // home: Scaffold(
      //   body: _pageActive[_currentIndex],
      //   bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _currentIndex,
      //     onTap: (int index) {
      //       setState(() {
      //         _currentIndex = index;
      //       });
      //     },
      //     items: [
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           size: 25,
      //           color: Colors.grey,
      //         ),
      //         title: Text(
      //           "หน้าแรก",
      //           style: TextStyle(
      //               color: Color(0xff983643),
      //               fontFamily: 'Prompt',
      //               fontSize: 16,
      //               fontWeight: FontWeight.w500),
      //         ),
      //         activeIcon: Icon(
      //           Icons.home,
      //           size: 30,
      //           color: Color(0xff983643),
      //         ),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.description,
      //           size: 25,
      //           color: Colors.grey,
      //         ),
      //         title: Text(
      //           "ลา",
      //           style: TextStyle(
      //               color: Color(0xff983643),
      //               fontFamily: 'Prompt',
      //               fontSize: 16,
      //               fontWeight: FontWeight.w500),
      //         ),
      //         activeIcon: Icon(
      //           Icons.description,
      //           size: 30,
      //           color: Color(0xff983643),
      //         ),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.history,
      //           size: 25,
      //           color: Colors.grey,
      //         ),
      //         title: Text(
      //           "ประวัติ",
      //           style: TextStyle(
      //               color: Color(0xff983643),
      //               fontFamily: 'Prompt',
      //               fontSize: 16,
      //               fontWeight: FontWeight.w500),
      //         ),
      //         activeIcon: Icon(
      //           Icons.history,
      //           size: 30,
      //           color: Color(0xff983643),
      //         ),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.person_pin,
      //           size: 25,
      //           color: Colors.grey,
      //         ),
      //         title: Text(
      //           "โปรไฟล์",
      //           style: TextStyle(
      //               color: Color(0xff983643),
      //               fontFamily: 'Prompt',
      //               fontSize: 16,
      //               fontWeight: FontWeight.w500),
      //         ),
      //         activeIcon: Icon(
      //           Icons.person_pin,
      //           size: 30,
      //           color: Color(0xff983643),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
