import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn_view.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(),
      body: Center(child: Icon(Icons.abc_sharp)),
      floatingActionButton: IconButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 300,
              );
            },
          );
        },
        icon: Container(
            decoration: ProjectContainerDecoration(), child: Icon(Icons.add)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Container(
        width: 300,
        decoration: ProjectContainerDecoration(),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil")
      ]),
    );
  }
}
