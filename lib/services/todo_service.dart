import '../models/todo.dart';

class TodoService {
  List<Map<String, dynamic>> todosToJson(List<Todo> todos) {
    return todos.map((todo) {
      return todo.toJson();
    }).toList();
  }

  List<Todo> todosFromJson(List<Map<String, dynamic>> data) {
    return data.map((json) {
      return Todo.fromJson(json);
    }).toList();
  }
}