import 'package:air_quality_checker/data/fetch_data.dart';
import 'package:air_quality_checker/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: fetchData(),
        builder: (context, snap) {
          if (snap.hasData) {
            return HomeScreen(snap.data!);
          } else {
            return Scaffold(
              body: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
