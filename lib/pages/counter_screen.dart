import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '12',
              style: TextStyle(
                fontSize: 88,
                fontWeight: FontWeight.w200,
                color: Colors.indigoAccent,
              ),
            ),
            Text(
              'Numero de clics',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
          Column(
            mainAxisAlignment: MainAxisAlignment.end, 
          children: [
        FloatingActionButton(
          shape: StadiumBorder(),
          onPressed: () {},
          child: Icon(
            Icons.plus_one,
          ),
        ),
      ]),
    );
  }
}
