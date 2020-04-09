class Todo {
  final int id;
  final int userId;
  final String title;
  final String body;

  Todo(this.id, this.userId, this.title, this.body);

  Todo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['userId'],
        title = json['title'],
        body = json['body'];
}