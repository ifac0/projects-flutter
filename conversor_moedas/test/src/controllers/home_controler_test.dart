import 'package:conversor_moedas/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText, fromText);

  test('deve converter de real para dolar com ponto', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

    test('deve converter de real para dolar com virgula', () {
    toText.text = '2,0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });
}
