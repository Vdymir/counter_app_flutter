import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);
  @override
  createState() => _CounterState();
}

class _CounterState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Counter App',
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              backgroundColor: Colors.yellow[600],
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              backgroundColor: Colors.yellow[600],
              child: const Icon(Icons.restart_alt),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              backgroundColor: Colors.yellow[600],
              child: const Icon(Icons.close),
            ),
          ],
        ));
  }
}
