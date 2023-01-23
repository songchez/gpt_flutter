import 'package:flutter/material.dart';
import 'package:flutter_sehan/components/heros.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '새한건설정보웹앱',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: '새한건설정보웹앱'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String cSubject = "건설종목";
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("정보를 입력하고 기업진단 해보세요"),
              const TextField(
                decoration: InputDecoration(
                    label: Text("건설종목"), border: OutlineInputBorder()),
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
              const TextField(
                decoration: InputDecoration(
                    label: Text("기술자"), border: OutlineInputBorder()),
              ),
              Text(_counter.toString()),
              TextButton(
                  onPressed: _incrementCounter, child: const Icon(Icons.add)),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Heros(),
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll<Size>(Size(100, 50)),
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.redAccent),
                  ),
                  child: const Text("제출"))
            ],
          ),
        ),
      ),
    );
  }
}
