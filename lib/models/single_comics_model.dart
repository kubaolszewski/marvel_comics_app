class SingleComicsModel {
  SingleComicsModel({
    required this.title,
     this.description,
    required this.thumbnail,
  });

  final String title;
  final dynamic description;
  final String thumbnail;

  SingleComicsModel.fromJson(Map<String, dynamic> json)
      : title = json['title'] as String,
        description = json['description'] as String,
        thumbnail = json['path'] as String;
}
