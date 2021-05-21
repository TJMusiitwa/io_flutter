// To parse this JSON data, do
//
//     final speakers = speakersFromJson(jsonString);

import 'dart:convert';

List<Speakers> speakersFromJson(String str) =>
    List<Speakers>.from(json.decode(str).map((x) => Speakers.fromJson(x)));

String speakersToJson(List<Speakers> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Speakers {
  Speakers({
    this.speakerImage,
    required this.speakerName,
  });

  final String? speakerImage;
  final String speakerName;

  factory Speakers.fromJson(Map<String, dynamic> json) => Speakers(
        speakerImage:
            json["speakerImage"] == null ? null : json["speakerImage"],
        speakerName: json["speakerName"],
      );

  Map<String, dynamic> toJson() => {
        "speakerImage": speakerImage == null ? null : speakerImage,
        "speakerName": speakerName,
      };
}
