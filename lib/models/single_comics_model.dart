class SingleComicsModel {
  SingleComicsModel({
    required this.title,
    required this.description,
    required this.authors,
    required this.imagePath,
  });

  final String title;
  final String description;
  final List<String> authors;
  final String imagePath;
}
