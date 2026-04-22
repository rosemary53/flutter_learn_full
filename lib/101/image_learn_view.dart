import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: ImageSize().imageHeight,
              width: ImageSize().imageWidth,
              child: ImageWidget(name: ImageAssetPath().appleBook)),
          SizedBox(
              height: ImageSize().imageHeight,
              width: ImageSize().imageWidth,
              child: Image.network(ImageNetworkPath().appleBook))
        ],
      ),
    );
  }
}

class ImageAssetPath {
  final String appleBook = "apple_book";
}

class ImageNetworkPath {
  final String appleBook =
      "https://cdn-icons-png.flaticon.com/512/207/207115.png";
}

class ImageSize {
  final double imageWidth = 250;
  final double imageHeight = 250;
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
    );
  }

  String get imagePath => "assets/png/$name.jpg";
}
