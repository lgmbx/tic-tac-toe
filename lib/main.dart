import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/core/constants.dart';
import 'package:tictactoe/core/theme_app.dart';
import 'package:tictactoe/pages/game_page.dart';

void main() {
  Function duringSplash = () {
    print('Something background process');
    int a = 123 + 23;
    print(a);

    if (a > 100)
      return 1;
    else
      return 2;
  };

  Map<int, Widget> op = {1: MyApp(), 2: MyApp()};

  runApp(MaterialApp(
    home: CustomSplash(
      imagePath: 'assets/unnamed.png',
      animationEffect: 'zoom-in',
      logoSize: 1024,
      home: MyApp(),
      customFunction: duringSplash,
      duration: 2500,
      type: CustomSplashType.StaticDuration,
      outputAndHome: op,
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: GAME_TITLE,
      theme: themeApp,
      home: GamePage(),
    );
  }
}
