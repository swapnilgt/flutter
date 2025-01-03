import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/model/todo_model.dart';

class TodoCubit extends Cubit<List<ToDo>> {
  final todoList = [];

  TodoCubit() : super([]);

  void addTodo(String title) {
    if (title.isEmpty) {
      addError('Title cannot be empty');
    }
    final todo = ToDo(
      name: title,
      createdAt: DateTime.now(),
    );
    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<ToDo>> change) {
    // print change
    super.onChange(change);
    print(change);
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    super.addError(error, stackTrace);
    print(error);
  }
}
