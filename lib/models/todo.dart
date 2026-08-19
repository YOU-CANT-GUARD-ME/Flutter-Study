class Todo {
  int id;
  String title;
  bool isCompleted;

  Todo({
    required this.id,
    required this.title,
    this.isCompleted = false,
  });
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "isCompleted": isCompleted,
    };
  }


  Todo.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        isCompleted = json["isCompleted"];
}