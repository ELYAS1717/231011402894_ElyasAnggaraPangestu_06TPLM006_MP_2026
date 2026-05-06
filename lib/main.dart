import 'package:flutter/material.dart';

void main() {
  runApp(const WorkshopApp());
}

class WorkshopApp extends StatelessWidget {
  const WorkshopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const WorkshopHomePage(),
    );
  }
}

class WorkshopHomePage extends StatelessWidget {
  const WorkshopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulasi data workshop
    final List<Map<String, String>> workshops = [
      {
        'judul': 'Workshop Flutter: Build Your First App',
        'tanggal': 'Selasa, 20 Mei 2026',
        'lokasi': 'Lab Komputer Terpadu, Lt. 2',
        'kuota': '15 / 50',
      },
      {
        'judul': 'UI/UX Design: Principles of Clean Interface',
        'tanggal': 'Kamis, 22 Mei 2026',
        'lokasi': 'Aula Gedung C, Lantai 3',
        'kuota': '5 / 30',
      },
      {
        'judul': 'Seminar Cyber Security: Protect Your Data',
        'tanggal': 'Sabtu, 24 Mei 2026',
        'lokasi': 'Daring (Zoom Meeting)',
        'kuota': 'Penuh',
      },
      {
        'judul': 'Seminar Rohani: Siraman Rohani',
        'tanggal': 'Senin, 29 Mei 2026',
        'lokasi': 'Daring (Zoom Meeting)',
        'kuota': 'Penuh',
      },
    ];

    return Scaffold(
      backgroundColor:
          Colors.grey[100], // Background lembut agar kartu terlihat menonjol
      appBar: AppBar(
        title: const Text('Tugas Workshop Elyas'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        itemCount: workshops.length,
        itemBuilder: (context, index) {
          final item = workshops[index];

          return Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 16),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 1. Judul Workshop (Hierarki Utama - Besar & Bold)
                  Text(
                    item['judul']!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // 2. Info Tanggal
                  Row(
                    children: [
                      const Icon(Icons.calendar_today,
                          size: 16, color: Colors.blueGrey),
                      const SizedBox(width: 8),
                      Text(item['tanggal']!,
                          style: TextStyle(color: Colors.grey[700])),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // 3. Info Lokasi
                  Row(
                    children: [
                      const Icon(Icons.location_on,
                          size: 16, color: Colors.blueGrey),
                      const SizedBox(width: 8),
                      Text(item['lokasi']!,
                          style: TextStyle(color: Colors.grey[700])),
                    ],
                  ),
                  const Divider(
                      height: 32, thickness: 1), // Garis pemisah halus

                  // 4. Kuota & Tombol Daftar (Row untuk posisi Kiri-Kanan)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Sisa Kuota',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey)),
                          Text(
                            item['kuota']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: item['kuota'] == 'Penuh'
                                  ? Colors.red
                                  : Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: item['kuota'] == 'Penuh' ? null : () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Text('Daftar Sekarang'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
