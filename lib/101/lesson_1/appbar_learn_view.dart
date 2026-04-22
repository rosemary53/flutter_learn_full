import 'package:flutter/material.dart';

class AppbarLearnView extends StatelessWidget {
  const AppbarLearnView({super.key});
  final String _title = "Welcome Learn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left,
              size: 24,
            )),
        actions: [
          IconButton(onPressed: () {}, icon: Text("merhaba")),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Text(_title * 500)],
        ),
      ),
    );
  }
}
