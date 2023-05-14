class SingleComicModel {
  final String title;
  final String image;
  final String? description;

  SingleComicModel({
    required this.title,
    required this.image,
    this.description,
  });

  factory SingleComicModel.fromJson(Map<String, dynamic> json) {
    return SingleComicModel(
      title: json['title'],
      image: '${json['thumbnail']['path']}.${json['thumbnail']['extension']}',
      description: json['description'],
    );
  }
}
