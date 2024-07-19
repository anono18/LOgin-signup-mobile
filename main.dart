import 'package:flutter/material.dart';
import 'create.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Registration UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginRegistrationPage(),
    );
  }
}

void _navigateToCreateAccountPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CreateAccountPage()),
  );
}

void _navigateToLoginInPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginInPage()),
  );
}

class LoginRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F8F8),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Welcome!',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 6, 240, 57),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Bienvenue sur notre application. Bonne experience',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () => _navigateToCreateAccountPage(context),
                            child: Text('SIGN IN'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 8, 240, 20),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () => _navigateToLoginInPage(context),
                            child: Text('LOGIN IN'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 8, 240, 20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
