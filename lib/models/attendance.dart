// To parse this JSON data, do
//
//     final attendance = attendanceFromJson(jsonString);

import 'dart:convert';

Attendance attendanceFromJson(String str) =>
    Attendance.fromJson(json.decode(str));

String attendanceToJson(Attendance data) => json.encode(data.toJson());

class Attendance {
  Attendance({
    this.attended,
    this.absent,
    this.total,
  });

  List<Absent> attended;
  List<Absent> absent;
  int total;

  factory Attendance.fromJson(Map<String, dynamic> json) => Attendance(
        attended:
            List<Absent>.from(json["attended"].map((x) => Absent.fromJson(x))),
        absent:
            List<Absent>.from(json["absent"].map((x) => Absent.fromJson(x))),
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "attended": List<dynamic>.from(attended.map((x) => x.toJson())),
        "absent": List<dynamic>.from(absent.map((x) => x.toJson())),
        "total": total,
      };
}

class Absent {
  Absent({
    this.id,
    this.date,
    this.attended,
    this.student,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String id;
  String date;
  bool attended;
  List<String> student;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory Absent.fromJson(Map<String, dynamic> json) => Absent(
        id: json["_id"],
        date: json["date"],
        attended: json["attended"],
        student: List<String>.from(json["student"].map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "date": date,
        "attended": attended,
        "student": List<dynamic>.from(student.map((x) => x)),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}
