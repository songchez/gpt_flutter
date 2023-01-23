import 'package:flutter/material.dart';
import 'package:flutter_sehan/components/heros.dart';
import 'package:flutter_sehan/components/input_field.dart';

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
  String cSubject = "건설종목";
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        Container(
          alignment: Alignment.center,
          child: const IputField(),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Heros(),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Comming Soon!!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              )),
        ),
      ][currentPageIndex],
    );
  }
}
