import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'pages/home_page.dart';
import 'pages/jadwal_page.dart';
import 'pages/akun_page.dart';
import 'widgets/profile_picture_widget.dart';  // Import widget foto profil

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Mahasiswa', // Set the general title of the app
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: MainScaffold(toggleTheme: toggleTheme),
    );
  }
}

class MainScaffold extends StatefulWidget {
  final void Function(bool) toggleTheme;

  const MainScaffold({super.key, required this.toggleTheme});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),      // HomePage
    const JadwalPage(),    // JadwalPage
    const AkunPage(),      // AkunPage
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _selectedIndex == 0
            ? const Text('Kegiatan')  // Menampilkan 'Kegiatan' di HomePage
            : _selectedIndex == 1
                ? const Text('Jadwal')  // Menampilkan 'Jadwal' di JadwalPage
                : const Text('Profil Mahasiswa'), // Menampilkan 'Profil Mahasiswa' di AkunPage
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ProfilePictureWidget(),  // Profile picture widget in the AppBar
              ],
            ),
          ),
        ],
      ),
      body: AdaptiveScaffold(
        selectedIndex: _selectedIndex,
        onSelectedIndexChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.schedule), label: 'Jadwal'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Akun'),
        ],
        body: (_) => _pages[_selectedIndex],
      ),
    );
  }
}
