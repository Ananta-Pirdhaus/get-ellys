import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_ellys/app/modules/home/controllers/profile_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  void initState() {
    super.initState();
    profileController.loadUserData();
  }

  // Fungsi untuk menyimpan data ke SharedPreferences
  Future<void> saveData(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  // Fungsi untuk memperbarui tampilan gambar
  Future<void> updateProfileImage() async {
    await profileController.saveImageToSharedPreferences();
    setState(() {}); // Memaksa rebuild widget
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Bagian untuk memilih gambar profil
            buildProfileImageSelector(),

            SizedBox(height: 16),

            // TextField untuk Username
            buildTextField(
              controller: profileController.usernameController,
              labelText: 'Username',
              onChanged: (value) => profileController.setUsername(value),
            ),

            SizedBox(height: 16),

            // TextField untuk Email
            buildTextField(
              controller: profileController.emailController,
              labelText: 'Email',
              onChanged: (value) => profileController.setEmail(value),
            ),

            SizedBox(height: 16),

            // TextField untuk Password
            buildTextField(
              controller: profileController.passwordController,
              labelText: 'Password',
              onChanged: (value) => profileController.setPassword(value),
            ),

            SizedBox(height: 16),

            // Tombol Simpan
            ElevatedButton(
              onPressed: () async {
                profileController.saveUserData();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Data has been saved.'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                padding: EdgeInsets.symmetric(horizontal: 35),
              ),
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk memilih gambar profil
  Widget buildProfileImageSelector() {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blueGrey,
      ),
      child: InkWell(
        onTap: showImageSourceDialog,
        child: GetBuilder<ProfileController>(
          builder: (controller) {
            if (controller.userProfile.imagePath.isNotEmpty) {
              return ClipOval(
                child: Image.file(
                  File(controller.userProfile.imagePath),
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              );
            } else {
              return Image.asset(
                'images/profil.png',
                width: 70,
                height: 70,
              );
            }
          },
        ),
      ),
    );
  }

  // Menampilkan dialog untuk memilih sumber gambar
  void showImageSourceDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Choose Image Source'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await profileController.pickImageFromGallery();
                  await updateProfileImage();
                  Navigator.pop(context);
                },
                child: Text('Gallery'),
              ),
              ElevatedButton(
                onPressed: () async {
                  await profileController.pickImageFromCamera();
                  await updateProfileImage();
                  Navigator.pop(context);
                },
                child: Text('Camera'),
              ),
            ],
          ),
        );
      },
    );
  }

  // Membuat TextField dengan konfigurasi tertentu
  Widget buildTextField({
    required TextEditingController controller,
    required String labelText,
    required Function(String) onChanged,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      style: TextStyle(
        color: Colors.black,
        fontFamily: 'Times New Roman',
      ),
      onChanged: onChanged,
    );
  }
}
