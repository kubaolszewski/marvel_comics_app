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
}
