import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});
  final String _cardTitle1 = "CARD 1";
  final String _cardTitle2 = "CARD 2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding().pagePaddingSymetric,
        child: Column(
          children: [
            _CustomCardWidget(
                backGroudColor: Theme.of(context).colorScheme.primary,
                child: _CustomSizedBox(
                    height: 150,
                    width: 400,
                    child: _CustomTextWidget(text: _cardTitle1))),
            _CustomCardWidget(
                backGroudColor: Colors.amber,
                child: _CustomSizedBox(
                    height: 100,
                    width: 400,
                    child: _CustomTextWidget(text: _cardTitle2)))
          ],
        ),
      ),
    );
  }
}

// Card widget için özel widget oluşturuyoruz
//Sadece bu sayfada kullanılsın istiyorum: _
// Eğer CustomCard ise sadece card widgetı olmalı SizedBox dışarıdan parametre oalrak alınmalı
class _CustomCardWidget extends StatelessWidget {
  _CustomCardWidget({super.key, this.backGroudColor, required this.child});
  final Color? backGroudColor;
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30));
  @override
  Widget build(BuildContext context) {
    return Card(
        color: backGroudColor,
        margin: ProjectMargins.cardMargin,
        shape: roundedRectangleBorder,
        child: child);
  }
}

//Cardın ebatları için gereken widget SizedBox
class _CustomSizedBox extends StatelessWidget {
  const _CustomSizedBox(
      {super.key,
      required this.height,
      required this.width,
      required this.child});
  final double height;
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Center(child: child),
    );
  }
}

class _CustomTextWidget extends StatelessWidget {
  const _CustomTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.black),
    );
  }
}

class ProjectPadding {
  final EdgeInsets pagePaddingSymetric =
      EdgeInsets.symmetric(vertical: 20, horizontal: 30);
  final EdgeInsets textPadding =
      EdgeInsets.only(left: 20, right: 30, top: 30, bottom: 30);
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}
