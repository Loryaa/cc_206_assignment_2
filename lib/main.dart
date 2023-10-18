import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gloria Marie P. Lamsin"),
        ),
        body: MyProfile(),
       ),
    );
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/profile_image.jpg'),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Gloria Marie P. Lamsin",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Text("Information", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          Divider(),
          InformationRow(icon: Icons.email, title: "Email:", data: "gloriamarie.lamsin@wvsu.edu.ph"),
          InformationRow(icon: Icons.phone_android, title: "Contact Number:", data: "09129337275"),
          InformationRow(icon: Icons.favorite, title: "Hobbies:", data: "Gaming, Sleeping, and Reading"),
          InformationRow(icon: Icons.location_on, title: "Location:", data: "Brgy. Palanguia, Pototan, Iloilo"),
          InformationRow(icon: Icons.school, title: "Education:", data: "West Visayas State University"),
          SizedBox(height: 20.0),
          Text("My Biography", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          Divider(),
          Text(
            "This is a short paragraph about me and my life. I was born on the 30th day of March 2002, which is Sabado de Gloria hence my name. I'm the seventh and youngest child. I have five sisters and one brother. My uncle and her wife kind of adopted me so I lived with them since I was young and I call them Papa and Mama while I call my biological parents Tatay and Nanay. I'm currently a 3rd year Computer Science student under CICT of West Visayas State University.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}

class InformationRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String data;

  InformationRow({required this.icon, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18.0),
        SizedBox(width: 10.0),
        Text(
          title,
          style: TextStyle(fontSize: 16.0),
        ),
        Spacer(),
        Text(data, style: TextStyle(fontSize: 16.0),
      ),
      SizedBox(height: 10.0),
    ]);
  }
}

