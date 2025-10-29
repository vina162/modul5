import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MusicNowPlaying(),
    );
  }
}

class MusicNowPlaying extends StatelessWidget {
  const MusicNowPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // latar gelap seperti di gambar
      appBar: AppBar(
        title: const Text('Sedang memutar'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: const Center(
        child: Card(
          elevation: 4,
          color: Color(0xFF1E1B1E), // warna card abu gelap seperti di gambar
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Ikon cakram (album)
                Icon(
                  Icons.album,
                  size: 70,
                  color: Color(0xFF7AA2B6), // warna biru keabu-abuan seperti di gambar
                ),
                SizedBox(height: 8),

                // Judul lagu
                Text(
                  'Di sini ada judul lagu',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),

                // Nama artis
                Text(
                  'Di sini ada nama artis',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),

                SizedBox(height: 8),

                // Tombol hati (like)
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.redAccent,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
