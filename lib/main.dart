import 'package:flutter/material.dart';

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
      theme: ThemeData(primarySwatch: Colors.amber, useMaterial3: true),
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
  int currentPageIndex = 1;

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
      //주석테스트
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.auto_stories_sharp),
            label: '기업진단',
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          NavigationDestination(
            icon: Icon(Icons.location_on_rounded),
            label: '기관찾기',
          ),
        ],
      ),
      body: <Widget>[
        Center(
          child: Container(
            width: 400,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("정보를 입력하고 기업진단 해보세요!"),
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
                    onPressed: () {},
                    style: const ButtonStyle(
                      minimumSize:
                          MaterialStatePropertyAll<Size>(Size(100, 50)),
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.redAccent),
                    ),
                    child: const Text("제출"))
              ],
            ),
          ),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}
