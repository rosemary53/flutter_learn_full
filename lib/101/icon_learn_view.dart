import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final String _title = "Icon Learn View";
  final IconSize iconSize = IconSize();
  final IconColor iconColor = IconColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(
        children: [
          Icon(
            Icons.message_outlined,
            size: iconSize.size,
            color: iconColor.color,
          ),
          Icon(
            Icons.message_outlined,
            size: iconSize.size,
          ),
        ],
      ),
    );
  }
}

class IconSize {
  final double size = 40;
}

class IconColor {
  final Color color = Colors.deepPurple;
}
