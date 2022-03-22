// To parse this JSON data, do
//
//     final authData = authDataFromJson(jsonString);

import 'dart:convert';

AuthData authDataFromJson(String str) => AuthData.fromJson(json.decode(str));

String authDataToJson(AuthData data) => json.encode(data.toJson());

class AuthData {
  AuthData({
    this.student,
    this.token,
  });

  String student;
  String token;

  factory AuthData.fromJson(Map<String, dynamic> json) => AuthData(
        student: json["student"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "student": student,
        "token": token,
      };
}
