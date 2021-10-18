class Tags {
  late List<Tags> tags;

  Tags({required this.tags});

  Tags.fromJson(Map<String, dynamic> json) {
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags.add(Tags.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (tags != null) {
      data['tags'] = tags.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
