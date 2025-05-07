import 'package:flutter/material.dart';
import 'package:project_adaptive_response/widgets/profile_picture_widget.dart'; // pastikan path sesuai dengan folder

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: ProfilePictureWidget(),
      ),
    );
  }
}