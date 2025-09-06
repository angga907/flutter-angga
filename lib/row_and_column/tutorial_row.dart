import 'package:flutter/material.dart';

class TutoriaLRow extends StatelessWidget {
  const TutoriaLRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Belajar Row")
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.thumb_up),
          Icon(Icons.thumb_down),
          Icon(Icons.share),
        ],
      ),
    );
  }
}