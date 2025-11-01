import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final bool withScaffold; // biar bisa dipakai di navbar juga
  const AboutPage({super.key, this.withScaffold = true});

  Widget _buildContent() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🖼️ Gambar aplikasi
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/about.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // 📘 Judul About
          const Text(
            'Tentang Aplikasi',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          // 📄 Deskripsi aplikasi
          const Text(
            'Aplikasi biodata mahasiswa ini menampilkan profil mahasiswa menggunakan widget Flutter seperti Text, Image, Icon, Button, dan layout Row & Column. '
            'Navigasi antar halaman dilakukan menggunakan Navigator.pushNamed atau push. Tampilan dirancang modern dan responsif.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),

          // 🧩 Fitur
          const Text(
            'Fitur:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            '- Home: Menampilkan daftar biodata mahasiswa (dengan search & pagination)',
          ),
          const Text(
            '- Detail: Menampilkan informasi biodata mahasiswa lebih lengkap',
          ),
          const Text('- Edit: Mengubah biodata mahasiswa'),
          const Text('- About: Menampilkan informasi tentang aplikasi'),

          const SizedBox(height: 24),

          // 👥 Anggota kelompok
          const Text(
            'Kelompok 2',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Aprelareza Agung Setya Budi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Text(
                'Egha Arya Affandi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Text(
                'Elang Rezky P',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Text(
                'Fuad Fakhruddin',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Text(
                'Muhammad Nur Rifqi Baharis',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Text(
                'Rafa Azka',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Text(
                'Ricki Maulana',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Text(
                'Sufyaan Nafiis Yaafiq',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!withScaffold) return _buildContent();

    return Scaffold(
      appBar: AppBar(
        title: const Text('About Aplikasi'),
        backgroundColor: Colors.indigo[600],
        foregroundColor: Colors.white,
      ),
      body: _buildContent(),
    );
  }
}
