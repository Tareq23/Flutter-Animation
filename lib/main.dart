

import 'package:flutter/material.dart';
import 'package:flutter_animation/pages/animated_search_bar.dart';
import 'package:flutter_animation/pages/home_page.dart';
import 'package:flutter_animation/pages/sanbox.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // home: SandBox(),
      home: AnimatedSearchBar(),
    );
  }
}
