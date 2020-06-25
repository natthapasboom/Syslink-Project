// import 'package:checkin/main.dart';
import 'package:checkin/api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:shared_preferences/shared_preferences.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final usernameController = new TextEditingController();
  final passwordController = new TextEditingController();
  String message = '';

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 150),
            Center(
              child: Image.asset(
                'assets/syslink.png',
                height: 60,
                width: 300,
              ),
            ),
            SizedBox(height: 70),
            Center(
              child: Form(
                key: _formKey,
                child: Container(
                  height: 50,
                  width: 330,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  child: TextFormField(
                    controller: usernameController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'cannot be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      hintText: "ID พนักงาน",
                      icon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                    style: TextStyle(
                      fontFamily: 'Prompt',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
                child: Form(
              child: Container(
                height: 50,
                width: 330,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'cannot be empty';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    hintText: "รหัสผ่าน",
                    icon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: 'Prompt',
                    fontSize: 16,
                  ),
                ),
              ),
            )),
            SizedBox(height: 70),
            Center(
              child: Container(
                width: 330,
                child: RaisedButton(
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      var username = usernameController.text;
                      var password = passwordController.text;

                      setState(() {
                        message = 'Please Wait...';
                      });
                      var rsp = await loginUser(username, password);
                      print(rsp);
                    }
                  },
                  padding: EdgeInsets.all(10),
                  color: Color(0xffc8404d),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'เข้าสู่ระบบ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Prompt',
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
