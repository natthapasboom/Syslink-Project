import 'package:flutter/material.dart';

class LeavePage extends StatelessWidget {
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
      body: Center(
        child: Text("leavepage"),
      ),
    );
  }
}
