class Post {
  final int id;
  final int useId;
  final String title;
  final String body;

  Post(
      {required this.id,
      required this.useId,
      required this.title,
      required this.body});

  factory Post.fromMap({required Map data}) {
    return Post(
        id: data["id"],
        useId: data["userId"],
        title: data["title"],
        body: data["body"]);
  }
}
