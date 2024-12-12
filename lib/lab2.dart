import 'package:flutter/material.dart';

class Lab2 extends StatelessWidget {
  const Lab2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(252, 239, 237, 1),
        appBar: AppBar(
          title: const Text(
            'MiCard',
            style: TextStyle(
              color: Color.fromRGBO(239, 83, 80, 1),
              fontFamily: 'Pacifico',
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/avt.jpg'),
              ),
              const Text(
                'Trương Hoàng Quốc Đạt',
                style: TextStyle(
                  fontSize: 38,
                  fontFamily: 'Pacifico',
                  color: Colors.black,
                ),
              ),
              const Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(239, 83, 80, 1),
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 3,
                ),
              ),
              const SizedBox(
                height: 20,
                width: 140,
                child: Divider(
                  color: Color.fromRGBO(239, 83, 80, 1),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromRGBO(239, 83, 80, 1),
                  ),
                  title: Text(
                    '+84 869859957',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Color.fromRGBO(239, 83, 80, 1),
                  ),
                  title: Text(
                    'dat47707@gmail.com',
                    style: TextStyle(
                      fontFamily: 'SansSerifPro',
                      fontSize: 18,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}