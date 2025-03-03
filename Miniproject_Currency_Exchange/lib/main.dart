import 'package:flutter/material.dart';
import 'package:project/home.dart';

void main()
{
  runApp(const useoverall());
}


class useoverall extends StatelessWidget {
  const useoverall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:
            const AppBarTheme(backgroundColor: Colors.orangeAccent),
      ),
    home: const Home(),

    );
  }
}