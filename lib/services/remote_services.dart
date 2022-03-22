import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:skool_trust/models/auth_data.dart';
import 'package:skool_trust/models/student.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<AuthData> loginUser(String email, String password) async {
    Map<String, dynamic> data = {
      'email': email,
      'password': password,
    };
    Map<String, String> header = {
      "Content-type": "application/json",
      "Accept": "application/json"
    };
    var response = await client.post(
      "https://school-monitor-backend.herokuapp.com/api/student/login",
      headers: header,
      body: jsonEncode(data),
    );
    print(response.body);
    print(email + " " + password);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return authDataFromJson(jsonString);
    } else {
      return null;
    }
  }

  static Future<Student> fetchStudent(String id, String token) async {
    Map<String, String> header = {
      "Authorization": token,
      "Content-type": "application/json",
      "Accept": "application/json"
    };
    var response = await client.get(
        "https://school-monitor-backend.herokuapp.com/api/student/" + id,
        headers: header);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return studentFromJson(jsonString);
    } else {
      return null;
    }
  }
}
