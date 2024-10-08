import 'package:flutter/material.dart';
import 'package:i_am_rich/photography_gear.dart';
import 'package:i_am_rich/styled_body_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Biongraphy',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red[700],
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.deepOrange[400],
            padding: const EdgeInsets.all(20),
            child: const StyledBodyText('CAMERA GEAR'),
          ),
          Container(
            color: Colors.deepOrange[300],
            padding: const EdgeInsets.all(20),
            child: const PhotographyGear(),
          ),
          Expanded(
            child: Image.asset(
              'Assets/img/gear.jpg',
              fit: BoxFit.fitHeight,
            ),
          )
        ],
      ),
    );
  }
}
