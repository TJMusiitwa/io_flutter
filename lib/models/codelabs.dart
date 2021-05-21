// To parse this JSON data, do
//
//     final codelabs = codelabsFromJson(jsonString);

import 'dart:convert';

List<Codelabs> codelabsFromJson(String str) =>
    List<Codelabs>.from(json.decode(str).map((x) => Codelabs.fromJson(x)));

String codelabsToJson(List<Codelabs> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Codelabs {
  Codelabs({
    required this.codelabLink,
    required this.codelabTitle,
    this.tag0,
    this.tag1,
  });

  final String codelabLink;
  final String codelabTitle;
  final String? tag0;
  final String? tag1;

  factory Codelabs.fromJson(Map<String, dynamic> json) => Codelabs(
        codelabLink: json["codelabLink"],
        codelabTitle: json["codelabTitle"],
        tag0: json["tag0"],
        tag1: json["tag1"],
      );

  Map<String, dynamic> toJson() => {
        "codelabLink": codelabLink,
        "codelabTitle": codelabTitle,
        "tag0": tag0,
        "tag1": tag1,
      };
}
