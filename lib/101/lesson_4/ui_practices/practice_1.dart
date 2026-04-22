// ignore_for_file: public_member_api_docs, sort_constructors_first
//Bu sayfada profil sayfası tasarlamaya çalışacağım.
import 'package:flutter/material.dart';

class Practice1 extends StatelessWidget {
  const Practice1({
    super.key,
  });
  //AppBar için gerekli
  final String pageTitle = "Profilim";
  final IconData leadingIcon = Icons.chevron_left;
  final IconData actionIcon = Icons.notifications_active;

  //SettingTile için gerekli bilgiler
  final IconData accountIcon = Icons.settings_applications_sharp;
  final IconData securityIcon = Icons.security;
  final IconData logoutIcon = Icons.logout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _CustomAppBar(
          leadingWidget: IconsWidget(icon: leadingIcon),
          actionWidget: IconsWidget(icon: actionIcon),
          child: _TitleTextWidget(text: pageTitle)),
      body: Center(
        child: Padding(
          padding: PagePadding.symetricPadding,
          child: Column(
            children: [
              // Kullanıcı Profil Resmi Gelecek : Profil Resmi İçin Widget Oluşturacağım
              SizedBox(
                width: 100,
                height: 100,
                child: Card(
                  shape: CircleBorder(),
                  child: _ProfilImageWidget(imageName: ProfilInfo.photoName),
                ),
              ),
              // Kullanıcı Adı
              emptyBox(),
              _ProfilInfoWidget(profilInfo: ProfilInfo.userName),
              emptyBox(),
              // Kullanıcı Maili
              _ProfilInfoWidget(profilInfo: ProfilInfo.email),
              emptyBox2(),
              SettingTileWidget(
                  ikon: accountIcon, infoText: ProfileSettings.accountDetails),
              emptyBox2(),
              SettingTileWidget(
                  ikon: securityIcon, infoText: ProfileSettings.security),
              emptyBox2(),
              SettingTileWidget(
                  ikon: logoutIcon, infoText: ProfileSettings.logout)
            ],
          ),
        ),
      ),
    );
  }

  SizedBox emptyBox() => SizedBox(
        height: 10,
      );
  SizedBox emptyBox2() => SizedBox(
        height: 30,
      );
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final Widget leadingWidget;
  final Widget actionWidget;
  final bool isCenterTitle;

  const _CustomAppBar(
      {Key? key,
      required this.child,
      required this.leadingWidget,
      required this.actionWidget,
      this.isCenterTitle = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: child,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: leadingWidget,
      ),
      leadingWidth: 68,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: actionWidget,
        )
      ],
      centerTitle: isCenterTitle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

//AppBar title özelliği için gerekli Widget
class _TitleTextWidget extends StatelessWidget {
  const _TitleTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

//Appbardaki leading ve actions için gerekli IconButton Widget
class IconsWidget extends StatelessWidget {
  const IconsWidget({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton.outlined(
        onPressed: () {},
        icon: Icon(
          icon,
        ),
        splashRadius: 24,
      ),
    );
  }
}

//Kullanıcı Profil Fotoğrafı
class _ProfilImageWidget extends StatelessWidget {
  const _ProfilImageWidget({super.key, required this.imageName});
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
    );
  }

  String get path => "assets/png/$imageName.png";
}

// Kullanıcı İsim ve mail bilgileri
class _ProfilInfoWidget extends StatelessWidget {
  const _ProfilInfoWidget({super.key, required this.profilInfo});
  final String profilInfo;
  @override
  Widget build(BuildContext context) {
    return Text(profilInfo);
  }
}

//Diğer Gerekli Ayarlar
class SettingTileWidget extends StatelessWidget {
  const SettingTileWidget(
      {super.key, required this.ikon, required this.infoText});
  final IconData ikon;
  final String infoText;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          // Kutunun ikonu
          Icon(ikon),
          emptyBox(),
          // Kutunun Adı
          Text(infoText),
          Spacer(),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }

  SizedBox emptyBox() {
    return SizedBox(
      width: 15,
    );
  }
}

class ProfileSettings {
  ProfileSettings._(); // Gizli constructor (Nesne üretilmez)

  static const String accountDetails = "Hesap Bilgileri";
  static const String notifications = "Bildirim Ayarları";
  static const String security = "Şifre ve Güvenlik";
  static const String logout = "Çıkış Yap";
}

//Genel Bilgiler
class ProfilInfo {
  static const photoName = "profile";
  static const userName = "Rosemary";
  static const email = "maryrosie53@gmail.com";
}

class PagePadding {
  static const EdgeInsets symetricPadding =
      EdgeInsets.symmetric(vertical: 20, horizontal: 20);
}
