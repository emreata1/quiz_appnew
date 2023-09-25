class Question {
  final String id;
  final String image;
  final Map<String, bool> options;

  Question({
    required this.id,
    required this.image,
    required this.options,
  });

  @override
  String toString() {
    return 'Question(id: $id ,image: $image options: $options)';
  }
}
