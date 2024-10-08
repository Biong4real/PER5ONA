import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MaterialApp(home: Home())); //MaterialApp
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SandBox'),
        backgroundColor: Colors.teal,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            color: Colors.black,
            child: const Text("One"),
          ),
          Container(
            height: 200,
            color: Colors.yellow,
            child: const Text("Two"),
          ),
          Container(
            height: 300,
            color: Colors.red,
            child: const Text("Three"),
          )
        ],
      ),
    );
  }
}
