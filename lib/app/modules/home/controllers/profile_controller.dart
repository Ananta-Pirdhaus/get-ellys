import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfile {
  String username;
  String email;
  String password;
  String imagePath;

  UserProfile({
    required this.username,
    required this.email,
    required this.password,
    required this.imagePath,
  });
}

class ProfileController extends GetxController {
  late UserProfile userProfile;

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    userProfile = UserProfile(
      username: '',
      email: '',
      password: '',
      imagePath: '',
    );
  }

  void setUsername(String value) {
    userProfile.username = value;
  }

  void setEmail(String value) {
    userProfile.email = value;
  }

  void setPassword(String value) {
    userProfile.password = value;
  }

  void setImage(String value) {
    userProfile.imagePath = value;
  }

  Future<void> pickImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setImage(pickedFile.path);
    }
  }

  Future<void> pickImageFromCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setImage(pickedFile.path);
    }
  }

  Future<void> saveImageToSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('image', userProfile.imagePath);
  }

  void loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    usernameController.text = prefs.getString('username') ?? '';
    emailController.text = prefs.getString('email') ?? '';
    passwordController.text = prefs.getString('password') ?? '';
    setImage(prefs.getString('image') ?? '');
  }

  void saveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', usernameController.text);
    prefs.setString('email', emailController.text);
    prefs.setString('password', passwordController.text);
    await saveImageToSharedPreferences(); // Simpan path gambar terbaru
  }
}
