import 'package:flutter/material.dart';

class IputField extends StatefulWidget {
  const IputField({super.key});

  @override
  State<IputField> createState() => _IputFieldState();
}

class _IputFieldState extends State<IputField> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("아무거나"),
            const TextField(
              decoration: InputDecoration(
                  label: Text("아무거나1"), border: OutlineInputBorder()),
            ),
            const TextField(
              decoration: InputDecoration(
                  label: Text("상태-1"), border: OutlineInputBorder()),
            ),
            const TextField(
              decoration: InputDecoration(
                  label: Text("상태-2"), border: OutlineInputBorder()),
            ),
            const TextField(
              decoration: InputDecoration(
                  label: Text("자본금"), border: OutlineInputBorder()),
            ),
            Text(_counter.toString()),
            TextButton(
                onPressed: _incrementCounter, child: const Icon(Icons.add)),
            TextButton(
                onPressed: () {},
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll<Size>(Size(100, 50)),
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.redAccent),
                ),
                child: const Text("제출"))
          ],
        ),
      ),
    );
  }
}
