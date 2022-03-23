// To parse this JSON data, do
//
//     final teacher = teacherFromJson(jsonString);

import 'dart:convert';

List<Teacher> teacherFromJson(String str) =>
    List<Teacher>.from(json.decode(str).map((x) => Teacher.fromJson(x)));

String teacherToJson(List<Teacher> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Teacher {
  Teacher({
    this.id,
    this.name,
    this.position,
    this.email,
    this.phone,
  });

  String id;
  String name;
  String position;
  String email;
  String phone;

  factory Teacher.fromJson(Map<String, dynamic> json) => Teacher(
        id: json["_id"],
        name: json["name"],
        position: json["position"],
        email: json["email"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "position": position,
        "email": email,
        "phone": phone,
      };
}
