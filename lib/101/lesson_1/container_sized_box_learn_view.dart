import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/lesson_4/theory_view/stateless_learn_view.dart';

class ContainerSizedBoxLearnView extends StatelessWidget {
  const ContainerSizedBoxLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox.square(
            dimension: 100,
            child: Text("4" * 150),
          ),
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(
                20), // İçerideki componente padding uyguluyor yani texte
            margin: EdgeInsets.all(10),
            decoration: ContainerDecoration
                .welcomeDecoration, // Dışarıdaki componente padding uyguluyor
            constraints: BoxConstraints(maxHeight: 100),
            child: Text("aaa" * 4),
          ),
          TitleTextWidget(title: "Başka Sayfadaki Widget"),
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(
                20), // İçerideki componente padding uyguluyor yani texte
            margin: EdgeInsets.all(10),
            decoration:
                ProjectContainerDecoration(), // Dışarıdaki componente padding uyguluyor
            constraints: BoxConstraints(maxHeight: 50),
            child: Text(
              "aaa" * 4,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}

class ContainerDecoration {
  static Decoration welcomeDecoration = BoxDecoration(
      gradient: LinearGradient(colors: [
        const Color.fromARGB(255, 66, 16, 13),
        const Color.fromARGB(255, 116, 32, 25),
        const Color.fromARGB(255, 255, 69, 56)
      ]),
      boxShadow: [BoxShadow(offset: Offset(2, 2))]);
}

// BoxDecoration sınıfından türetebiliriz bu sayede üst sınıfın alanlarına erişebiliriz
class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 10, 36, 51),
              const Color.fromARGB(255, 42, 54, 127),
              const Color.fromARGB(255, 153, 151, 237)
            ]),
            boxShadow: [BoxShadow(offset: Offset(2, 2))]);
}
