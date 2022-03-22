// To parse this JSON data, do
//
//     final student = studentFromJson(jsonString);

import 'dart:convert';

Student studentFromJson(String str) => Student.fromJson(json.decode(str));

String studentToJson(Student data) => json.encode(data.toJson());

class Student {
  Student({
    this.id,
    this.dateEnrolled,
    this.gender,
    this.firstName,
    this.lastName,
    this.email,
    this.dob,
    this.parentName,
    this.address,
    this.parentPhone,
    this.batch,
    this.createdAt,
    this.updatedAt,
  });

  String id;
  String dateEnrolled;
  String gender;
  String firstName;
  String lastName;
  String email;
  String dob;
  String parentName;
  String address;
  String parentPhone;
  String batch;
  DateTime createdAt;
  DateTime updatedAt;

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        id: json["_id"],
        dateEnrolled: json["dateEnrolled"],
        gender: json["gender"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        dob: json["dob"],
        parentName: json["parentName"],
        address: json["address"],
        parentPhone: json["parentPhone"],
        batch: json["batch"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "dateEnrolled": dateEnrolled,
        "gender": gender,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "dob": dob,
        "parentName": parentName,
        "address": address,
        "parentPhone": parentPhone,
        "batch": batch,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
