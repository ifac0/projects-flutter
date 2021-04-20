import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/src/controllers/home_controller.dart';

main() {
  final controller = HomeController();

  test('deve preencher variavel todos', () async {
    expect(controller.state, HomeState.start);
    await controller.init();
    expect(controller.state, HomeState.success);
    expect(controller.todos.isNotEmpty, true);
  });
}
