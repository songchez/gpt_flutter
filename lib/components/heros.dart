import 'package:flutter/material.dart';

class Heros extends StatelessWidget {
  const Heros({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Expanded(
        flex: 2,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
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
                    GestureDetector(
                        onTap: () {
                          'Learn More button clicked';
                        },
                        child: const SizedBox(
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
