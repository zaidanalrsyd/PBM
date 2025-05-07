import 'package:flutter/material.dart';

class JadwalPage extends StatelessWidget {
  const JadwalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> jadwal = [
      {'hari': 'Senin', 'matkul': 'Pemograman Berbasis Mobile'},
      {'hari': 'Selasa', 'matkul': 'Prak. Pemograman Berbasis Mobile'},
      {'hari': 'Rabu', 'matkul': 'Eticksl Hacking'},
      {'hari': 'Kamis', 'matkul': 'Intelligent System'},
      {'hari': 'Jumat', 'matkul': 'Data Mining'},
    ];

    // Membuat list hari-hari
    final days = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat'];

    // Membagi jadwal berdasarkan hari
    final Map<String, List<Map<String, String>>> groupedJadwal = {
      'Senin': jadwal.where((item) => item['hari'] == 'Senin').toList(),
      'Selasa': jadwal.where((item) => item['hari'] == 'Selasa').toList(),
      'Rabu': jadwal.where((item) => item['hari'] == 'Rabu').toList(),
      'Kamis': jadwal.where((item) => item['hari'] == 'Kamis').toList(),
      'Jumat': jadwal.where((item) => item['hari'] == 'Jumat').toList(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Jadwal Kuliah'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          // Daftar jadwal berdasarkan hari
          ...days.map((day) {
            final daySchedule = groupedJadwal[day];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Menampilkan nama hari dengan warna latar belakang biru dan ukuran yang lebih kecil
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  margin: const EdgeInsets.only(bottom: 8),
                  color: Colors.blueAccent,
                  child: Text(
                    day,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Menampilkan jadwal untuk hari tersebut
                ...?daySchedule?.map((item) => Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: ListTile(
                        title: Text(
                          item['matkul']!,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    )),
                // Memberi bar pemisah setelah setiap hari dengan styling lebih rapih
                const Divider(
                  color: Colors.blueAccent,
                  height: 1,
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                ),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}
