import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$contador',
              style: const TextStyle(
                fontSize: 88,
                fontWeight: FontWeight.w200,
                color: Colors.indigoAccent,
              ),
            ),
            Text(
              'clic${contador == 1 ? '' : 's'}',
              style: const TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          customButtom(
            onPressed: (){
              setState(() {
                contador ++;
              });
            },
            icono: Icons.plus_one_outlined,
          ),

        FloatingActionButton(
          shape: const StadiumBorder(),
          onPressed: () {
            setState(() {
              if (contador == 0) return;
              contador--;
            });
          },
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          shape: const StadiumBorder(),
          onPressed: () {
            setState(() {
              contador = 0;
            });
          },
          child: const Icon(Icons.restart_alt_rounded),
        )
      ]),
    );
  }
}

class customButtom extends StatelessWidget {
  final IconData icono;
  final VoidCallback? onPressed;
  const customButtom({super.key, required this.icono, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icono),
    );
  }
}
