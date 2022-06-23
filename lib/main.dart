import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 96, 4, 112),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundColor: Colors.purple,
                backgroundImage: AssetImage('imagens/foto.png'),
                radius: 50.0,
              ),
              gerarText('Samuel Fernandes', 'LibreBaskerville', 40.0, 0),
              gerarText(
                  'DESENVOLVEDOR FULLSTACK', 'Source Sans Pro', 20.0, 2.5),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(
                  color: Colors.purple.shade100,
                ),
              ),
              gerarCard(
                const Icon(
                  Icons.phone,
                  size: 25.0,
                  color: Colors.purple,
                ),
                '(83) 3263-1056',
              ),
              gerarCard(
                const Icon(
                  Icons.mail,
                  size: 25.0,
                  color: Colors.purple,
                ),
                'samuelfesant@gmail.com',
              ),
              gerarCard(
                const Icon(
                  Icons.gite,
                  size: 25.0,
                  color: Colors.purple,
                ),
                'https://github.com/samuelfer',
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    gerarStack('imagens/java.png'),
                    gerarStack('imagens/spring.png'),
                    gerarStack('imagens/php.png'),
                    gerarStack('imagens/laravel.png'),
                    gerarStack('imagens/angular.png'),
                    gerarStack('imagens/html.png'),
                    gerarStack('imagens/css.png'),
                    gerarStack('imagens/javascript.png'),
                    gerarStack('imagens/typescript.png'),
                    gerarStack('imagens/nodejs.png'),
                    gerarStack('imagens/mysql.png'),
                    gerarStack('imagens/postgres.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget gerarStack(String imageStack) {
    return Container(
      margin: const EdgeInsets.all(2),
      width: 80,
      alignment: Alignment.center,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(
            imageStack,
          ),
        ),
      ),
    );
  }

  Card gerarCard(Icon icon, String text) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 25.0,
      ),
      child: ListTile(
        leading: icon,
        title: Text(
          text,
          style: const TextStyle(
            color: Colors.purple,
            fontFamily: 'Source Sans Pro',
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  Text gerarText(
      String texto, String fontFamily, double fontSize, double letterSpacing) {
    return Text(
      texto,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
