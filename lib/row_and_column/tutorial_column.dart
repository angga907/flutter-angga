import 'package:flutter/material.dart';

class TutorialColumn extends StatelessWidget {
  const TutorialColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial Column"),
      ),
      body: Column(
        children: [
          Text("Hello, World", style: TextStyle(fontSize: 30),),
          Text("Tes aja"),
        ],
      ),
    );
  }
}