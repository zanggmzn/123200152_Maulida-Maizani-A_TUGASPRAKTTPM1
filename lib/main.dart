import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Screen'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
             const SizedBox(
                  height: 110,
                ),
            Container(
              padding: const EdgeInsets.all(30),
              child: const FlutterLogo(
                size: 40,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
              child: TextField(
                obscureText: true, 
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              height: 70,
              padding: const EdgeInsets.fromLTRB(21, 35, 21, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                ),
                child: const Text('Log In'),
                onPressed: () {},
              )
              ),
              const SizedBox(
                      height: 5,
                    ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
