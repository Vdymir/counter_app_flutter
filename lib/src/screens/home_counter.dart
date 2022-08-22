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
              style: const TextStyle(color: Colors.black, fontSize: 25),
            )
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _generateButtons());
  }

  Widget _generateButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(width: 30),
        FloatingActionButton(
          onPressed: _add,
          backgroundColor: Colors.yellow[600],
          child: const Icon(Icons.add),
        ),
        const Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _reset,
          backgroundColor: Colors.yellow[600],
          child: const Icon(Icons.restart_alt),
        ),
        const SizedBox(width: 5),
        FloatingActionButton(
          onPressed: _subtract,
          backgroundColor: Colors.yellow[600],
          child: const Icon(Icons.close),
        ),
      ],
    );
  }

  void _add() {
    setState(() {
      counter++;
    });
  }

  void _reset() {
    setState(() {
      counter = 0;
    });
  }

  void _subtract() {
    setState(() {
      counter--;
    });
  }
}
