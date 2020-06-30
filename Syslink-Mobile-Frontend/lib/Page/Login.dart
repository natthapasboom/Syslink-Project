import 'dart:convert';
import 'package:checkin/main.dart';
import 'package:checkin/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
//import 'package:checkin/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<LoginPage> {
  bool isLoading = false;
  // final logger = Logger();
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //List<User> list = List();

  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  // Future<List<User>> login() async {
  //   //var data = await http.get("http://10.0.2.2:8080/api/login");
  //   //var jsonData = json.decode(data.body);

  //   if (_formKey.currentState.validate()) {
  //     setState(() {
  //       isLoading = true;
  //     });
  //   }
  //   print('after validate ==> ');
  //   Dio dio = Dio();
  //   dio.options.headers['content-Type'] = 'application/json';

  //   Response response = await dio.post(
  //     "http://10.0.2.2:8080/api/login",
  //     data: {
  //       "username": usernameController.text.trim(),
  //       "password": passwordController.text.trim(),
  //     },
  //   );

  //   print(response.statusCode);

  //   if (response.statusCode == 200) {
  //     logger.d(response.data);
  //     print('success');
  //     var result = User.fromJson(response.data[0]);
  //     print('result: ${result.username}');
  //     print('password : ${result.password}');

  //     if (result.username != null){

  //     }
  //   }
  // }

  // Future<List> _login() async {
  //   final response = await http.post("http://10.0.2.2:8080/api/login", body: {
  //     "username": usernameController.text,
  //     "password": passwordController.text,
  //   });

  //   var datauser = json.decode(response.body);

  //   if (datauser.length == 0) {
  //     setState(() {
  //       msg = "Login Fail";
  //     });
  //   } else {
  //     if (datauser[0]['name'] == 'test1') {
  //       Navigator.pushReplacementNamed(context, '/Homepage');
  //     }
  //   }
  // }

  // @override
  // void initState() {
  //   this.login();
  //   super.initState();
  // }

  // Future<void> login() async {
  //   //print('get data');
  //   var response = await http.get("http://10.0.2.2:8080/api/login");
  //   print(response.body);

  // var datauser = jsonDecode(response.body);
  // print(datauser);

  //String url = "http://10.0.2.2:8080/api/login";
  //Dio dio = Dio();
  // Response response = await dio.post(
  //   url,
  //   data: {
  //     "username": usernameController.text.trim(),
  //     "password": passwordController.text.trim(),
  //   },
  // );
  //}

  // if (response.statusCode == 200) {
  //   jsonResponse = json.decode(response.body);
  //   if (jsonResponse != null) {
  //     setState(() {
  //       isLoading = false;
  //     });
  //     //sharedPreferences.setString("token", jsonResponse['token']);
  //     Navigator.of(context).pushAndRemoveUntil(
  //         MaterialPageRoute(builder: (BuildContext context) => MyApp()),
  //         (Route<dynamic> route) => false);
  //   }
  // } else {
  //   setState(() {
  //     isLoading = false;
  //   });
  //   print(response.body);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView(
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
                    child: userTextSection(),
                  ),
                  SizedBox(height: 50),
                  Center(
                    child: passTextSection(),
                  ),
                  SizedBox(height: 70),
                  Center(
                    child: bottonSection(),
                  ),
                  // Text(
                  //   msg,
                  //   style: TextStyle(fontSize: 20),
                  // )
                ],
              ),
      ),
    );
  }

  login(String username, password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'username': username, 'password': password};
    var jsondata = null;
    var response =
        await http.post("http://10.0.2.2:8080/api/login", body: data);
    if (response.statusCode == 200) {
      jsondata = json.decode(response.body);
      if (jsondata != null) {
        setState(() {
          isLoading = false;

          sharedPreferences.setString("token", jsondata['token']);
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (BuildContext context) => MyApp()),
              (Route<dynamic> route) => false);
        });
      } else {
        print(response.body);
      }
    }
  }

  Container bottonSection() {
    return Container(
      width: 330,
      child: RaisedButton(
        onPressed: () {
          setState(() {
            isLoading = true;
          });
          login(usernameController.text, passwordController.text);
        },
        padding: EdgeInsets.all(10),
        color: Color(0xffc8404d),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: <Widget>[
            Text(
              'เข้าสู่ระบบ',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Prompt',
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  Container userTextSection() {
    return Container(
      height: 50,
      width: 330,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      child: TextField(
        controller: usernameController,
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
    );
  }

  Container passTextSection() {
    return Container(
      height: 50,
      width: 330,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: TextField(
        controller: passwordController,
        keyboardType: TextInputType.text,
        obscureText: true,
        autocorrect: true,
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
    );
  }
}
