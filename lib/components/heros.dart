import 'package:flutter/material.dart';

class Heros extends StatelessWidget {
  const Heros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Column(
              children: const [Text("자 드가자1"), Text("자 드가자2"), Text("자 드가자3")],
            ),
          ),
        ),
      ),
    );
  }
}
