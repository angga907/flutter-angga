import 'package:flutter/material.dart';

class TutorialContainer extends StatelessWidget {
  const TutorialContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("Container tanpa decoration"),
                SizedBox(height: 10,),
                Container(
                  color: Colors.blue,
                  width: 200,
                  height: 100,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(10),
                  child: Text("Budi Luhur"),
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text("Container dengan decoration"),
                    SizedBox(height: 10,),
                    Container(
                      width: 200,
                      height: 100,
                      padding: const EdgeInsets.all(20),
                      // margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Text("Budi Luhur"),
                    ),
                  ],
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}