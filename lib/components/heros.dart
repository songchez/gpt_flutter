import 'package:flutter/material.dart';

class Heros extends StatelessWidget {
  const Heros({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                scale: 1,
                colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
                image: AssetImage("images/back.jpg"),
                fit: BoxFit.fitHeight)),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              margin: const EdgeInsets.all(20),
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
                    '건설업 면허등록,\n하나부터 열까지\n성공을 위한 선택.',
                    textAlign: TextAlign.center,
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
                      const SizedBox(height: 20.0), //구분선
                      Container(
                        width: double.infinity,
                        height: 1.0,
                        color: Colors.grey[100],
                      ),
                      const SizedBox(height: 20.0),

                      Row(
                        children: const [
                          ServiceCard(
                            icon: Icons.business_center,
                            title: '건설업등록',
                          ),
                          ServiceCard(
                            icon: Icons.monetization_on,
                            title: '공사업양도/양수',
                          ),
                          ServiceCard(
                            icon: Icons.people,
                            title: '기술인력',
                          ),
                        ],
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

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
