import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/appbar_learn_view.dart';
import 'package:flutter_full_learn/101/button_learn_view.dart';
import 'package:flutter_full_learn/101/card_learn_view.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn_view.dart';
import 'package:flutter_full_learn/101/icon_learn_view.dart';
import 'package:flutter_full_learn/101/image_learn_view.dart';
import 'package:flutter_full_learn/101/padding_learn_view.dart';
import 'package:flutter_full_learn/101/scaffold_learn_view.dart';
import 'package:flutter_full_learn/101/stateless_learn_view.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';

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
        iconTheme: IconThemeData(size: 28, color: Colors.amber),
      ),
      home: ImageLearnView(),
    );
  }
}
