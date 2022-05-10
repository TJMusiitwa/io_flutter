// To parse this JSON data, do
//
//     final content = contentFromJson(jsonString);

import 'dart:convert';

List<Content> contentFromJson(String str) =>
    List<Content>.from(json.decode(str).map((x) => Content.fromJson(x)));

String contentToJson(List<Content> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Content {
  Content({
    required this.mainLinkHref,
    required this.speakerImage,
    required this.speakerName,
    required this.overview,
    required this.talk,
    required this.talkLevel,
    required this.talkCategories,
  });

  final String mainLinkHref;
  final String speakerImage;
  final String speakerName;
  final String overview;
  final String talk;
  final String talkLevel;
  final String talkCategories;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        mainLinkHref: json["mainLink-href"],
        speakerImage: json["speakerImage"],
        speakerName: json["speakerName"],
        overview: json["overview"],
        talk: json["talk"],
        talkLevel: json["talkLevel"],
        talkCategories: json["talkCategories"],
      );

  Map<String, dynamic> toJson() => {
        "mainLink-href": mainLinkHref,
        "speakerImage": speakerImage,
        "speakerName": speakerName,
        "overview": overview,
        "talk": talk,
        "talkLevel": talkLevel,
        "talkCategories": talkCategories,
      };
}
