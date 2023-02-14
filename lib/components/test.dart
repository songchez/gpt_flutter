import 'package:flutter/material.dart';
import 'package:openai_gpt3_api/openai_gpt3_api.dart';

class Gpttest extends StatefulWidget {
  const Gpttest({super.key});

  @override
  State<Gpttest> createState() => _GpttestState();
}

class _GpttestState extends State<Gpttest> {
  var api = GPT3('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');
  dynamic result;
  //다이나믹. 타입을 미리지정하고싶지 않을때.
  @override
  void initState() {
    super.initState();
  }

  void search() {
    setState(() async {
      result = await api.search('please tell me how to go india from seoul.');
    });
    // var result = await api.completion(...);
    // var result = await api.classification(...);
    // var result = await api.answer(...);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("GPT TEST"),
          ElevatedButton(
              onPressed: () {
                search();
              },
              child: Column(
                children: const [
                  Text("submit"),
                  Icon(Icons.star_purple500_sharp),
                ],
              ))
        ],
      ),
    );
  }
}
