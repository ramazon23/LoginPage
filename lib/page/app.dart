import 'package:flutter/material.dart';
import 'package:page_g8/page/hom_page.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "Nunito",
      ),
      home: const HomPage(),
    );
  }
}
