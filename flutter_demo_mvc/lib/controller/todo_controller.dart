import '../models/todo.dart';
import '../repository/repository.dart';

class TodoController {
  // 다형성 활용
  final Repository _repository;

  TodoController(this._repository);

  // get todo list
  Future<List<Todo>> fetchTodoList() async {
    return _repository.getTodoList();
  }

  // putCompleted
  Future<String> putTodoList(Todo todo) async {
    return _repository.putCompleted(todo);
  }

  // deletedTodo
  Future<String> deleteTodoList(Todo todo) async {
    return _repository.deletedTodo(todo);
  }

  // postTodo
  Future<String> postTodoList(Todo todo) async {
    return _repository.postTodo(todo);
  }

  // patchCompleted
  Future<String> updatePatchCompleted(Todo todo) async {
    return _repository.patchCompleted(todo);
  }
}
