import 'package:flutter/material.dart';
import 'package:syslinkproject/Screens/Historypage.dart';
import 'package:syslinkproject/Screens/Homepage.dart';
import 'package:syslinkproject/Screens/Leavepage.dart';
import 'package:syslinkproject/Screens/Settingpage.dart';

class Navigation extends StatefulWidget {
  @override
  NavigationState createState() => NavigationState();
}

class NavigationState extends State<Navigation> {
  int pageIndex = 0;

  final Homepage _homepage = Homepage();
  final LeavePage _leavePage = LeavePage();
  final HistoryPage _historyPage = HistoryPage();
  final SittingPage _sittingPage = SittingPage();

  Widget _showPage = new Homepage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _homepage;
        break;
      case 1:
        return _leavePage;
        break;
      case 2:
        return _historyPage;
        break;
      case 3:
        return _sittingPage;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text(
              'No page',
              style: new TextStyle(fontSize: 30),
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        // bottomNavigationBar: BottomNavigationBar(
        //   height: 50,
        //   items: <Widget>[
        //     Icon(Icons.home, size: 25, color: Colors.white),
        //     Icon(Icons.history, size: 25, color: Colors.white),
        //     Icon(Icons.notifications_active, size: 25, color: Colors.white),
        //     Icon(Icons.perm_identity, size: 25, color: Colors.white),
        //   ],
        //   color: Colors.redAccent[100],
        //   backgroundColor: Colors.deepOrange[100],
        //   buttonBackgroundColor: Colors.redAccent[100],
        //   animationCurve: Curves.easeInOut,
        //   animationDuration: Duration(milliseconds: 600),
        //   onTap: (int tappedIndex) {
        //     setState(() {
        //       _showPage = _pageChooser(tappedIndex);
        //     });
        //   },
        // ),
        body: Container(
          child: Center(child: _showPage),
        ),
      );
  }
}
