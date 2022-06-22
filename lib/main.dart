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
        backgroundColor: Color.fromARGB(255, 96, 4, 112),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.purple,
                backgroundImage: AssetImage('imagens/foto.png'),
                radius: 50.0,
              ),
              Text(
                'Samuel Fernandes',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LibreBaskerville',
                ),
              ),
              Text(
                'DESENVOLVEDOR FULLSTACK',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.purple.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(
                  color: Colors.purple.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 25.0,
                    color: Colors.purple,
                  ),
                  title: Text(
                    '(83) 3263-1056',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 25.0,
                    color: Colors.purple,
                  ),
                  title: Text(
                    'samuelfesant@gmail.com',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.gite,
                    size: 25.0,
                    color: Colors.purple,
                  ),
                  title: Text(
                    'https://github.com/samuelfer',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: const <Widget>[
                    Expanded(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            'imagens/java.png',
                          ),
                          // radius: 50.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('imagens/spring.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('imagens/php.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('imagens/laravel.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('imagens/angular.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('imagens/postgres.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _card() {}
}
