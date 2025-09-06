import 'package:flutter/material.dart';

class StrawberiPage extends StatelessWidget {
  const StrawberiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SafeArea(child: Column(
        children: [
          // Title
          Container(
            padding: const EdgeInsets.all(10),
            child: Text("Strawberi Pavlova", style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center),
          ),

          //Deskripsi
          Container(
            padding: const EdgeInsets.symmetric(),
            child: Text("Strawberi pavlova is a meringue-based dessert named after the russian ballrerina Anua Pavlova. Pavlova features a crisp crust and soft, light inside, topper with fruid and whipped cream", textAlign: TextAlign.center,
            ),
          ),
          //Column bintang
                Row(
  mainAxisAlignment: MainAxisAlignment.center, // biar ngumpul di tengah
  children: [
    Icon(Icons.star, color: Colors.amber),
    Icon(Icons.star, color: Colors.amber),
    Icon(Icons.star, color: Colors.amber),
    Icon(Icons.star, color: Colors.amber),
    Icon(Icons.star, color: Colors.amber),
    SizedBox(width: 8),
    Text("170 Reviews"),
  ],
),


          //Informasi
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Column Pertama
                Column(
                  children: [
                    Icon(Icons.menu_book),
                    Text("Prep:"),
                    Text("25 min")
                  ],
                ),
                //Column Kedua
                Column(
                  children: [
                    Icon(Icons.timer),
                    Text("Cook:"),
                    Text("1 hr")
                  ],
                ),
                //Column Ketiga
                Column(
                  children: [
                    Icon(Icons.restaurant),
                    Text("Feeds:"),
                    Text("4-6")
                  ],
                )
              ],
            ),
          ),
          
        ],
      )),
    );
  }
}