// To parse this JSON data, do
//
//     final session = sessionFromJson(jsonString);

import 'dart:convert';

List<Session> sessionFromJson(String str) =>
    List<Session>.from(json.decode(str).map((x) => Session.fromJson(x)));

String sessionToJson(List<Session> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Session {
  Session({
    required this.link,
    required this.image,
    required this.datetime,
    required this.time,
    required this.day,
    required this.title,
    required this.description,
    required this.level,
    required this.category,
    this.category2,
  });

  final String link;
  final String image;
  final String datetime;
  final String time;
  final Day? day;
  final String title;
  final String description;
  final String level;
  final String category;
  final String? category2;

  factory Session.fromJson(Map<String, dynamic> json) => Session(
        link: json["link"],
        image: json["image"],
        datetime: json["datetime"],
        time: json["time"],
        day: dayValues.map[json["day"]],
        title: json["title"],
        description: json["description"],
        level: json["level"],
        category: json["category"],
        category2: json["category2"],
      );

  Map<String, dynamic> toJson() => {
        "link": link,
        "image": image,
        "datetime": datetime,
        "time": time,
        "day": dayValues.reverse![day],
        "title": title,
        "description": description,
        "level": level,
        "category": category,
        "category2": category2,
      };
}

enum Day { DAY_1, DAY_2 }

final dayValues = EnumValues({"Day 1": Day.DAY_1, "Day 2": Day.DAY_2});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => new MapEntry(v, k));
    return reverseMap;
  }
}
