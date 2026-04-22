import 'package:flutter/material.dart';

//Widgeti sağdan soldan hizalamyı sağlar
//Bazı componentlerde padding varsayılan olarak ekleniyor bunu silmek için EdgeInsets.zero demeniz yeterlidir
//Ancak paddingi sayfada nasıl kullanmalıyız her componenette ayrı ayrı mı uygulamalıyız doğru kullanımı nedir?
class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});
  final String text = "Merhaba";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ProjectPadding().pagePaddingHorizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _CustomContainer(),
            _CustomContainer(),
            //Yukarıdan ve sağdan soldan eşit kayması için simetrik
            _CustomContainer(),
            //Sadece mesela sağdan 20 kaysın istiyorsak : only
            Padding(
              padding: ProjectPadding().pagePaddingHorizontal +
                  ProjectPadding().pagePaddingLeftOnly,
              child: Text(text),
            )
          ],
        ),
      ),
    );
  }
}

//Padding değerlerini bir sınıfta toplamak gerekiyor ki diğer tüm sayfalara uygulayalım ve sayfanın standartını oluşturualım
class ProjectPadding {
  final EdgeInsets pagePaddingHorizontal = EdgeInsets.symmetric(vertical: 70);
  final EdgeInsets pagePaddingLeftOnly = EdgeInsets.only(left: 30);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 100,
    );
  }
}
