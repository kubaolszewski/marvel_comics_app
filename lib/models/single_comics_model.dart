class SingleComicsModel {
  SingleComicsModel({
    required this.title,
    required this.writers,
    required this.description,
    required this.imagePath,
  });

  final String title;
  final List<String> writers;
  final String description;
  final String imagePath;

  SingleComicsModel.fromJson(Map<String, dynamic> json)
      : title = json['data']['results']['title'] as String,
        writers = json['data']['results']['creators']['role'] as List<String>,
        description = json['data']['results']['description'] as String,
        imagePath = json['data']['results']['thumbnail']['path'] as String;
}
