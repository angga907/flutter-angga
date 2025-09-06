import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView( // biar bisa discroll kalau kepanjangan
          children: [
            // Title atas
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                "Flutter layout demo",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),

            // Gambar utama
            Image.asset(
              "GunungRinjani.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            // Bagian Nama tempat + Lokasi + Rating
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Nama tempat + lokasi
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Oeschinen Lake Campground",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Kandersteg, Switzerland",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  // Rating
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.red),
                      SizedBox(width: 4),
                      Text("41"),
                    ],
                  )
                ],
              ),
            ),

            // Bagian tombol (CALL, ROUTE, SHARE)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  _IconButton(icon: Icons.call, label: "CALL"),
                  _IconButton(icon: Icons.near_me, label: "ROUTE"),
                  _IconButton(icon: Icons.share, label: "SHARE"),
                ],
              ),
            ),

            // Deskripsi
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. "
                "Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. "
                "A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, "
                "leads you to the lake, which warms to 20 degrees Celsius in the summer. "
                "Activities enjoyed here include rowing, and riding the summer toboggan run.",
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget khusus tombol icon
class _IconButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _IconButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.deepPurple),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(color: Colors.deepPurple),
        ),
      ],
    );
  }
}
