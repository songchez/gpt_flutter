import 'package:flutter/material.dart';

class Heros extends StatelessWidget {
  const Heros({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/back.png"), fit: BoxFit.fitHeight)),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    '새한건설정보',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '건설업 면허등록 하나부터 열까지, 성공을 위한 선택',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: 500,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
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
                        '기업맞춤형 컨설팅',
                        style: TextStyle(
                          color: Colors.white,
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
                        title: '건설업등록',
                        description: '건설업등록에 필요한 모든 것을 제공합니다.',
                      ),
                      const ServiceCard(
                        icon: Icons.monetization_on,
                        title: '공사업양도/양수',
                        description: '귀사에 꼭 필요한 양도물건 찾아드립니다.',
                      ),
                      const ServiceCard(
                        icon: Icons.people,
                        title: '기술인력',
                        description: '딱 맞는 기술인력 찾아드리겠습니다',
                      ),
                      const SizedBox(height: 20.0),
                    ]))),
            ElevatedButton(onPressed: () {}, child: const Text("기업진단 받아보기")),
            const SizedBox(height: 20.0),
          ]),
        ),
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
