import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:todo_list/src/models/todo_model.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

class HomeController {
  List<TodoModel> todos = [];
  final repository = TodoRepository();

  final state = ValueNotifier<HomeState>(HomeState.start);

  Future init() async {
    state.value = HomeState.loading;
    try {
      todos = await repository.fetchTodos();
      state.value = HomeState.success;
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, success, error }
