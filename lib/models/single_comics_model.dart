class SingleComicsModel {
  SingleComicsModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  final String title;
  final String description;
  final String imagePath;

  SingleComicsModel.fromJson(Map<String, dynamic> json)
      : title = json['data']['results']['title'] as String,
        description = json['data']['results']['description'] as String,
        imagePath = json['data']['results']['thumbnail']['path'] as String;
}
