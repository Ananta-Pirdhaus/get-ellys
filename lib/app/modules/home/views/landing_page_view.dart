import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_ellys/app/modules/home/views/service_list_view.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  void _navigateToNextScreen() {
    Get.to(() => ServiceList()); // Menggunakan GetX untuk navigasi
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Text(
              'Home Service',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
              ),
            ),
            Image.asset(
              'images/Homeservice.png',
              width: 400,
              height: 400,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToNextScreen, // Panggil _navigateToNextScreen langsung
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.navigate_next),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
