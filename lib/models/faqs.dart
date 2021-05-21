// To parse this JSON data, do
//
//     final faQs = faQsFromJson(jsonString);

import 'dart:convert';

List<FaQs> faQsFromJson(String str) =>
    List<FaQs>.from(json.decode(str).map((x) => FaQs.fromJson(x)));

String faQsToJson(List<FaQs> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FaQs {
  FaQs({
    required this.header,
    required this.content,
  });

  final String header;
  final String content;

  factory FaQs.fromJson(Map<String, dynamic> json) => FaQs(
        header: json["header"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "header": header,
        "content": content,
      };
}
