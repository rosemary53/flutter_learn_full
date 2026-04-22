import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key});
  final String name = "Gülfidan";

  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${keys.welcomeMessage} $name ${name.length}",
            style: ProjectStyles.welcomeStyles,
            maxLines: 2, //Maksimum satır sayısı
            overflow: TextOverflow
                .ellipsis, //Eğer text içindeki metin 2 satırdan fazlaysa sonuna 3 nokta koymayı sağlıyor
            textAlign: TextAlign.right,
          ),
          Text(
            "Welcome $name ${name.length}",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: ProjectColors.welcomeColor),
            maxLines: 2, //Maksimum satır sayısı
            overflow: TextOverflow
                .ellipsis, //Eğer text içindeki metin 2 satırdan fazlaysa sonuna 3 nokta koymayı sağlıyor
            textAlign: TextAlign.right,
          ),
        ],
      )),
    );
  }
}

//Widget içinde tekrar eden yapıları sınıf altında toplayıp erişebilirsiniz
//Örneğin 2 text içinde style aynıydı ben tekrar eden yapıyı bir sınıf içerisinde topladım.
class ProjectStyles {
  static TextStyle welcomeStyles = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    wordSpacing: 3, //Kelimeler arası boşluk
    letterSpacing: 5, // Harfler arası boşluk
    decoration: TextDecoration.underline,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

/*Sayfada kullanılacak herhangi keyleri mesela bir sayfadan gelen kullanıcı adı bilgisi vb
 hepsini keys sınıfı altında toplayabilirsiniz 
*/
class ProjectKeys {
  final String welcomeMessage = "Merhaba";
}
