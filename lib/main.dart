import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/screens/home_screen.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
