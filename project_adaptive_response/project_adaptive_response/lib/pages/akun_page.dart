import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../main.dart';

class AkunPage extends StatefulWidget {
  const AkunPage({super.key});

  @override
  State<AkunPage> createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  bool _isDarkMode = false;
  XFile? _image; // Menyimpan gambar profil
  final ImagePicker _picker = ImagePicker();

  // Variabel untuk menyimpan data pengguna
  String _name = "Mochamad Zaidan Al Rasyid";
  String _npm = "4522210118";
  String _email = "Zaidanalrsyd@gmail.com";

  // Fungsi untuk memilih gambar dari galeri
  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = pickedFile;
      });
    }
  }

  // Fungsi untuk membuka dialog edit data pengguna
  void _editData(String field) {
    TextEditingController controller;
    switch (field) {
      case 'name':
        controller = TextEditingController(text: _name);
        break;
      case 'npm':
        controller = TextEditingController(text: _npm);
        break;
      case 'email':
        controller = TextEditingController(text: _email);
        break;
      default:
        controller = TextEditingController();
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit $field'),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(hintText: 'Enter new $field'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                if (field == 'name') {
                  _name = controller.text;
                } else if (field == 'npm') {
                  _npm = controller.text;
                } else if (field == 'email') {
                  _email = controller.text;
                }
              });
              Navigator.of(context).pop();
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final parentState = context.findAncestorStateOfType<MyAppState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Data Mahasiswa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto Profil Bulat
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: _image != null
                      ? DecorationImage(
                          image: FileImage(File(_image!.path)),
                          fit: BoxFit.cover,
                        )
                      : DecorationImage(
                          image: AssetImage('assets/images/profile.jpg') as ImageProvider,
                          fit: BoxFit.cover,
                        ),
                  border: Border.all(
                    color: Colors.blue,
                    width: 4,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Informasi Pengguna
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Nama:', style: TextStyle(color: Colors.white)),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(_name, style: TextStyle(color: Colors.white)),
                          IconButton(
                            icon: Icon(Icons.edit, color: Colors.white, size: 18),
                            onPressed: () => _editData('name'),
                            tooltip: 'Edit Nama',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // NPM
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('NPM:', style: TextStyle(color: Colors.white)),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(_npm, style: TextStyle(color: Colors.white)),
                          IconButton(
                            icon: Icon(Icons.edit, color: Colors.white, size: 18),
                            onPressed: () => _editData('npm'),
                            tooltip: 'Edit NPM',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Email
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Email:', style: TextStyle(color: Colors.white)),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(_email, style: TextStyle(color: Colors.white)),
                          IconButton(
                            icon: Icon(Icons.edit, color: Colors.white, size: 18),
                            onPressed: () => _editData('email'),
                            tooltip: 'Edit Email',
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Mode Gelap
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Mode Gelap', style: TextStyle(color: Colors.white)),
                Switch(
                  value: _isDarkMode,
                  onChanged: (val) {
                    setState(() {
                      _isDarkMode = val;
                      parentState?.toggleTheme(val);
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
