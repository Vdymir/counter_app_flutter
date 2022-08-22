import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Hola mundo',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          backgroundColor: Colors.yellow,
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Numero de clicks",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text(
              "$counter",
              style: TextStyle(color: Colors.black, fontSize: 25),
            )
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.yellow[600],
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.yellow[600],
              child: const Icon(Icons.restart_alt),
            ),
          ],
        ));
  }
}
