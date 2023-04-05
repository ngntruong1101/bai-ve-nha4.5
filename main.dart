import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 110,
            backgroundColor: Colors.green,
            title: Text(
              'Sign in',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.white,
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(157, 216, 214, 214),
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(30))),
                    labelText: "Username",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(157, 216, 214, 214),
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(30))),
                    labelText: "Password",
                  ),
                  obscureText: true,
                  obscuringCharacter: "*",
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Forgot: Username/Password?",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ),
              ElevatedButton(
                child: Text('Sign in'),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: Colors.green,
                ),
              ),
            ]),
          ),
        ));
  }
}
