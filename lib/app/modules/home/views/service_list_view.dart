import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_ellys/app/modules/home/views/profile_view.dart';


class ServiceList extends StatelessWidget {
  void _navigateToProfile() {
    Get.to(() => ProfilePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service List"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/Cleaningservice.png',
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        'Cleaning Service',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman'),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/Servicereparasi.png',
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        'Repair Service',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: (10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/Gardener.png',
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        'Garden Service',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman'),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/Petcare.png',
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        'Pet Care',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: (10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/Servicedelivery.png',
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        'Delivery Service',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman'),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/BeautyandSPA.png',
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        'Beauty & SPA',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: (10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/Consultingservice.png',
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        'Consultation Service',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman'),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/Craftmen.png',
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        'Craftmen',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: (10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/Carrepair.png',
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        'Car Service',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman'),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/Childcare.png',
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        'Child Care',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.calendar_month)),
          IconButton(onPressed: () {}, icon: Icon(Icons.book)),
          IconButton(
            onPressed: _navigateToProfile,
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
