import 'package:flutter/material.dart';

import 'sign in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyWidget(),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 60,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade300,
              ),
              width: MediaQuery.of(context).size.width - 100,
              child: const Padding(
                padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Username',
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade300,
              ),
              width: MediaQuery.of(context).size.width - 100,
              child: const Padding(
                padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 60, top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('Forgot '),
                  Text(
                    'Username/Password ?',
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.green,
                boxShadow: const [
                  BoxShadow(color: Colors.green, spreadRadius: 3),
                ],
              ),
              width: MediaQuery.of(context).size.width - 100,
              child: TextButton(
                  onPressed: () => {},
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: const Text(
                    'Don\'t have an account?',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15, top: 5),
                  child: const Text(
                    'SIGN UP NOW',
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
