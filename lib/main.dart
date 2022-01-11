import 'package:express24/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(iconTheme: IconThemeData(color: Colors.black)),
      debugShowCheckedModeBanner: false,
      title: "Exprees 24",
      initialRoute: '/',
      onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
    );
  }
}
