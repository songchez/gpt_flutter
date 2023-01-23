import 'package:flutter/material.dart';
import 'package:flutter_sehan/components/Heros.dart';

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
                Text("정보를 입력하고 기업진단 해보세요!"),
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

class BusinessConsultingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Expanded(
        flex: 2,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Business Consulting',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'We help businesses succeed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
      Expanded(
          flex: 1,
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(children: <Widget>[
                    SizedBox(height: 30.0),
                    Text(
                      'What We Offer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: double.infinity,
                      height: 1.0,
                      color: Colors.grey[300],
                    ),
                    SizedBox(height: 20.0),
                    ServiceCard(
                      icon: Icons.business_center,
                      title: 'Business Strategy',
                      description:
                          'We help businesses develop a clear and effective strategy to reach their goals.',
                    ),
                    ServiceCard(
                      icon: Icons.monetization_on,
                      title: 'Financial Management',
                      description:
                          'We provide financial management services to help businesses make informed decisions.',
                    ),
                    ServiceCard(
                      icon: Icons.people,
                      title: 'Human Resources',
                      description:
                          'We help businesses attract, retain, and manage top talent to drive success.',
                    ),
                    SizedBox(height: 20.0),
                    GestureDetector(
                        onTap: () {
                          print('Learn More button clicked');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                        ))
                  ]))))
    ]));
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  ServiceCard(
      {required this.icon, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  icon,
                  size: 50.0,
                  color: Colors.grey[600],
                ),
                SizedBox(height: 10.0),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
