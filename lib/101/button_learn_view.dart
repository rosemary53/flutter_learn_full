import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Kaydet"),
              ),
              IconButton(onPressed: null, icon: Icon(Icons.mail)),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(minimumSize: Size(300, 60)),
                child: Text("Ekle"),
              ),
              FloatingActionButton(
                onPressed:
                    null, //Butonlara tıklanılmasını istemiyorsanız onPressedı null ayarlayarak disabled haline getirebilirsiniz
                child: Icon(Icons.add),
              ),
              SizedBox(
                width: 200,
                child: OutlinedButton(
                    onPressed: () {}, child: Center(child: Text("Ok"))),
              ),
              //Custom ve paddingsiz button
              InkWell(onTap: null, child: const Text("Custom Button")),
              Container(
                height: 100,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateColor.resolveWith(
                    (states) {
                      if (states.contains(WidgetState.pressed)) {
                        return Colors.green;
                      }
                      return Colors.red;
                    },
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
                  child: Text(
                    "Ekle",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
              IconButton.filled(
                  onPressed: () {}, icon: Icon(Icons.abc_outlined)),
              IconButton.filledTonal(
                  onPressed: null, icon: Icon(Icons.abc_rounded)),
              IconButton.outlined(onPressed: () {}, icon: Icon(Icons.add))
            ],
          ),
        ));
  }
}
