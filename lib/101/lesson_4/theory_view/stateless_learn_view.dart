//Stateless widgeti hangi durumlarda kullanırız?
//Özel bir widget geliştiriyorsak statelesswidgettan türetiyoruz.
//Özel bir widget geliştirirken parametre yönetimine dikkat etmeliyiz
//Eğer sayfada çok kompleks widgetlar varsa ya da sayfa kod karmaşasından geçinmiyorsa widgetları bir class haline getiriniz.

//Basit işlerde statelesswidget oluşturmak yerine method oluşturabiliriz örneğin widgetlar araısna boşluk koyarken
import 'package:flutter/material.dart';

class StateLessLearnView extends StatelessWidget {
  const StateLessLearnView({super.key});
  //Özel widgetlara parametre olarak vereceğimiz textler burada toplanmalı şimdilik
  final String _text1 = "Learn 1";
  final String _text2 = "Learn 2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Aynı zamanda argüman verirken burada direkt manuel vermiyoruz bir değişkende tanımlıyoruz
          TitleTextWidget(
            title: _text1,
          ),
          emptyBox(),
          TitleTextWidget(title: _text2),
          emptyBox(),
          _CustomContainer()
        ],
      ),
    );
  }

  //Basit işlerde method oluşturmak mantıklıdır
  SizedBox emptyBox() => SizedBox(
        height: 15,
      );
}

//Geliştirdiğimiz özel widgetların sadece sayfaya özel olmasını istiyorsak yani sadece bu saydana erişilmesini istiyorsak Sınıf adının başına _ koymalıyız.
class _CustomContainer extends StatelessWidget {
  const _CustomContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.amberAccent,
          border: Border.all(color: Colors.red),
          boxShadow: [BoxShadow(offset: Offset(3, 3), color: Colors.white)]),
    );
  }
}

//Eğer bir sayfa üzerinde tekrar eden yapılan varsa veya çok fazla kod kalabalığına sebep olan bir widget ise onu özel bir şekilde hazırlayabiliriz
//Stateless widgetlar dışarıdan parametre alır mı
class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
    );
  }
}
