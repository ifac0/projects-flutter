import 'package:flutter/material.dart';

import 'src/views/home_view.dart';

main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}
