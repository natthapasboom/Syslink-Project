import 'package:flutter/material.dart';
//import 'package:syslinkproject/Screens/Homepage.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<LoginPage> {
  // final TextEditingController _passwordController = TextEditingController();

  // @override
  // void dispose() {
  //   _passwordController.dispose();
  //   super.dispose();
  // }

  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  Future<List> _login() async {
    final response = await http.post("http://10.0.2.2");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc8404d),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 110),
            Center(
              child: Image.asset(
                'assets/logo.png',
                height: 130,
                width: 120,
              ),
            ),
            SizedBox(height: 70),
            Center(
              child: Text(
                'ยินดีต้อนรับเข้าสู่ระบบ',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Prompt',
                    fontSize: 26,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 70),
            Center(
              child: Container(
                height: 50,
                width: 330,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: TextField(
                  controller: username,
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    hintText: "รหัสผู้ใช้งาน",
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: 'Prompt',
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Container(
                height: 50,
                width: 330,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: TextField(
                  controller: password,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      hintText: "รหัสผ่าน",
                      icon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      suffixIcon: new GestureDetector(
                        child: Icon(Icons.remove_red_eye),
                        onTap: () {},
                      )),
                  style: TextStyle(
                    fontFamily: 'Prompt',
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
            InkWell(
              onTap: () {
                _login();
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Homepage()),
                // );
              },
              child: Container(
                height: 80,
                margin: EdgeInsets.fromLTRB(240, 0, 0, 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'เข้าสู่ระบบ ',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Prompt',
                              fontSize: 25,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
