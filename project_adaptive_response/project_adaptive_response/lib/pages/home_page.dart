import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _activities = [
    {'name': 'Pemograman Berbasis Mobile', 'date': '6 Mei 2025', 'done': false},
    {'name': 'Prak. Pemograman Berbasis Proyek', 'date': '7 Mei 2025', 'done': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Kegiatan'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: _activities.length,
        itemBuilder: (context, index) {
          final activity = _activities[index];
          return CheckboxListTile(
            title: Text(activity['name']),
            subtitle: Text(activity['date']),
            value: activity['done'],
            onChanged: (value) {
              setState(() {
                activity['done'] = value!;
              });
            },
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
