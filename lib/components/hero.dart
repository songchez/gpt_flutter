import 'package:flutter/material.dart';

class Hero extends StatelessWidget {
  const Hero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: const [Text("자 드가자1"), Text("자 드가자2"), Text("자 드가자3")],
      ),
    );
  }
}
