// To parse this JSON data, do
//
//     final sessions = sessionsFromJson(jsonString);

import 'dart:convert';

List<Sessions> sessionsFromJson(String str) =>
    List<Sessions>.from(json.decode(str).map((x) => Sessions.fromJson(x)));

String sessionsToJson(List<Sessions> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Sessions {
  Sessions({
    this.sessionGeneralTime,
    this.sessionLink,
    this.sessionTime,
    required this.sessionTitle,
    this.eventTag0,
    this.eventTag1,
    this.eventTag2,
    this.eventTag3,
    this.eventTag4,
    this.eventTag5,
    this.eventTag6,
  });

  final String? sessionGeneralTime;
  final String? sessionLink;
  final String? sessionTime;
  final String sessionTitle;
  final String? eventTag0;
  final String? eventTag1;
  final String? eventTag2;
  final String? eventTag3;
  final String? eventTag4;
  final String? eventTag5;
  final String? eventTag6;

  factory Sessions.fromJson(Map<String, dynamic> json) => Sessions(
        sessionGeneralTime: json["sessionGeneralTime"],
        sessionLink: json["sessionLink"],
        sessionTime: json["sessionTime"],
        sessionTitle: json["sessionTitle"],
        eventTag0: json["eventTag0"],
        eventTag1: json["eventTag1"],
        eventTag2: json["eventTag2"],
        eventTag3: json["eventTag3"],
        eventTag4: json["eventTag4"],
        eventTag5: json["eventTag5"],
        eventTag6: json["eventTag6"],
      );

  Map<String, dynamic> toJson() => {
        "sessionGeneralTime": sessionGeneralTime,
        "sessionLink": sessionLink,
        "sessionTime": sessionTime,
        "sessionTitle": sessionTitle,
        "eventTag0": eventTag0,
        "eventTag1": eventTag1,
        "eventTag2": eventTag2,
        "eventTag3": eventTag3,
        "eventTag4": eventTag4,
        "eventTag5": eventTag5,
        "eventTag6": eventTag6,
      };
}
