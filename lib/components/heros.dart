import 'package:flutter/material.dart';

class Heros extends StatelessWidget {
  const Heros({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            decoration: const BoxDecoration(color: Colors.black),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  '새한건설정보',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '건설업 면허 하나부터 열까지, 성공을 위한 선택',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: 500,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(children: <Widget>[
                    const SizedBox(height: 30.0),
                    const Text(
                      'What We Offer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      width: double.infinity,
                      height: 1.0,
                      color: Colors.grey[300],
                    ),
                    const SizedBox(height: 20.0),
                    const ServiceCard(
                      icon: Icons.business_center,
                      title: 'Business Strategy',
                      description:
                          'We help businesses develop a clear and effective strategy to reach their goals.',
                    ),
                    const ServiceCard(
                      icon: Icons.monetization_on,
                      title: 'Financial Management',
                      description:
                          'We provide financial management services to help businesses make informed decisions.',
                    ),
                    const ServiceCard(
                      icon: Icons.people,
                      title: 'Human Resources',
                      description:
                          'We help businesses attract, retain, and manage top talent to drive success.',
                    ),
                    const SizedBox(height: 20.0),
                  ]))),
          ElevatedButton(onPressed: () {}, child: const Text("기업진단 받아보기"))
        ]),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ServiceCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});

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
                const SizedBox(height: 10.0),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 10.0),
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
