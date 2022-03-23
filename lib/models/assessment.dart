// To parse this JSON data, do
//
//     final assessment = assessmentFromJson(jsonString);

import 'dart:convert';

List<Assessment> assessmentFromJson(String str) =>
    List<Assessment>.from(json.decode(str).map((x) => Assessment.fromJson(x)));

String assessmentToJson(List<Assessment> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Assessment {
  Assessment({
    this.id,
    this.type,
    this.subject,
    this.dateTaken,
    this.marksScored,
    this.student,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String id;
  String type;
  String subject;
  String dateTaken;
  String marksScored;
  List<String> student;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory Assessment.fromJson(Map<String, dynamic> json) => Assessment(
        id: json["_id"],
        type: json["type"],
        subject: json["subject"],
        dateTaken: json["dateTaken"],
        marksScored: json["marksScored"],
        student: List<String>.from(json["student"].map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "type": type,
        "subject": subject,
        "dateTaken": dateTaken,
        "marksScored": marksScored,
        "student": List<dynamic>.from(student.map((x) => x)),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}
