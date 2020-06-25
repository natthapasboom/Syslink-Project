import 'package:http/http.dart' as http;
import 'dart:convert';

Future loginUser(String username, String password) async {
  String url = "";
  final response = await http.post(url,
      headers: {"Accept": "Application/json"},
      body: {"username": username, 'password': password});

      var convertedDatatoJson = jsonDecode(response.body);
      return convertedDatatoJson;
}
