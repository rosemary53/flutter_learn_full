import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/lesson_4/theory_view/image_learn_view.dart';
import 'package:flutter_full_learn/101/lesson_4/ui_practices/practice_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          shadowColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle
              .light, //Telefonun durum çübuğunu appBar ile aynı yapmayı sağlıyor
          scrolledUnderElevation:
              0, //Sayfayı kaydırırken appBara eklenen gölgeyi kaydırmayı engelliyor
        ),
        iconTheme: IconThemeData(size: 28, color: Colors.white60),
      ),
      home: Practice1(),
    );
  }
}
