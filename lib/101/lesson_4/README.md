## Stateless Widget Nedir Ve Ne Amaçla Kullanılır?

"Durumsuz Widget" demektir. Ekrana bir kez çizilir ve ondan sonra kendi kendine hiçbir şeyini (rengini, yazısını, boyutunu) değiştiremez.

Sadece veriyi alıp ekranda şık bir şekilde göstermek için kullanılır. Sabit metinler, logolar, buton tasarımları, liste elemanları (kartlar) için kullanılır.

Veri İçin Kullanılır mı? Evet kullanılır ama sadece okumak için. Yani dışarıdan veriyi alır, ekrana basar. Ama ekrandayken o veriyi güncelleyemez (örneğin bir sayacı artırmak için StatelessWidget yetmez, Stateful gerekir).

StatelessWidget soyut(abstarct) bir sınıftır.Biz kendimiz widget oluştururken bu sınıftan türeyerek yani bu sınıfı miras alarak yeni widgetlar oluşturabiliriz.

## StatelessWidget'ın sahip olduğu metodlar nelerdir?

Bu sınıfın en önemli metodu build metodudur. Build metodu ise soyuttur yani gövdesizdir ve alt sınıf tarafından override edilmek zorundadır.

Build metodu sayesinde widgetın ekrana çizilmesi sağlanır.

## StatelessWidget Hangi Durumlarda Kullanılır?

Widget ekrana çizildikten sonra durumu değişmeyecekse kullanılır.
Profil fotoğrafları,butonlar vb örnek olarak verilebilir.

## Hangi Durumlarda Kullanılmaz?

Widget ekrandayken kullanıcının eylemiyle anlık olarak şekil, renk veya veri değiştirecekse kullanılamaz. Bu durumda StatefullWidget'a başvurulur.
Kullanıcı tıkladıkça sayaç artıyorsa,animasyon vb durumlar örnek olarak verilebilir.

## StatelessWidget Parametre Alır Mı?

Evet dışarıdan parametre alır. Parametrelerin tipi final olmalıdır.
Parametrelerin kesinlikle değer almasını istiyorsak kurucu metod içerisinde required olduğu belirtilmelidir.

## Arayüzü Parçalarken: Widget (Sınıf) vs. Metot (Fonksiyon) Hangisini Kullanmalıyız?

Sınıf (Class / Widget) Kullanımı: Eğer parçalayacağın yapı dışarıdan veriler (parametreler) alıyorsa, kendi içinde bir Padding, Card, Row gibi karmaşık bir ağaç oluşturuyorsa kesinlikle kendi StatelessWidget sınıfını açmalısın. Flutter'ın render (çizim) motoru sınıfları çok daha iyi optimize eder.

Metot (Method) Kullanımı: Sadece iki widget arasına 15 piksellik boşluk koymak (SizedBox) veya dümdüz, parametresiz bir çizgiyi (Divider) ekrana basmak gibi çok basit, maliyetsiz ve state barındırmayan işlemler için sayfanın en altına küçük bir SizedBox emptyBox() => ... metodu yazmak en mantıklısıdır.