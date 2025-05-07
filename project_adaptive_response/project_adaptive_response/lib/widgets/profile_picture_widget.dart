// ProfilePictureWidget.dart
import 'package:flutter/material.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.0, // Ukuran foto profil
      backgroundImage: AssetImage('assets/images/profile_picture.jpg'), // Ganti dengan path foto Anda
      backgroundColor: Colors.transparent,
    );
  }
}
