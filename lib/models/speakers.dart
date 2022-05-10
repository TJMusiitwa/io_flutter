// To parse this JSON data, do
//
//     final speaker = speakerFromJson(jsonString);

import 'dart:convert';

List<Speaker> speakerFromJson(String str) =>
    List<Speaker>.from(json.decode(str).map((x) => Speaker.fromJson(x)));

String speakerToJson(List<Speaker> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Speaker {
  Speaker({
    required this.name,
    this.pronouns,
    required this.speakerLink,
    required this.role,
    required this.description,
    required this.talk,
    required this.image,
  });

  final String name;
  final String? pronouns;
  final String speakerLink;
  final String role;
  final String description;
  final String talk;
  final String image;

  factory Speaker.fromJson(Map<String, dynamic> json) => Speaker(
        name: json["name"],
        pronouns: json["pronouns"],
        speakerLink: json["speakerLink"],
        role: json["role"],
        description: json["description"],
        talk: json["talk"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "pronouns": pronouns,
        "speakerLink": speakerLink,
        "role": role,
        "description": description,
        "talk": talk,
        "image": image,
      };
}
