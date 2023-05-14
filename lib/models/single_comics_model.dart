class SingleComicsModel {
  final String title;
  final String image;
  final String? description;

  SingleComicsModel({
    required this.title,
    required this.image,
    this.description,
  });

  factory SingleComicsModel.fromJson(Map<String, dynamic> json) {
    return SingleComicsModel(
      title: json['title'],
      image: '${json['thumbnail']['path']}.${json['thumbnail']['extension']}',
      description: json['description'],
    );
  }
}