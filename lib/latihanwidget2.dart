import 'package:flutter/material.dart';

void main() {
  runApp(SekolahBeta());
}

class SekolahBeta extends StatelessWidget {
  const SekolahBeta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sekolah Beta Flutter",
      home: HomeScreen(),
      theme: ThemeData.light(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi MyDonut"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  "Donut Avocado Dicaprio JCO",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 11),
                Text(
                  "A doughnut or donut is a type of food made from \nleavened fried dough. It is popular in many countries \nand is prepared in various forms as a sweet snack \nthat can be homemade or purchased in bakeries, \nsupermarkets, food stalls, and franchised specialty vendors.",
                ),
                SizedBox(height: 11),
                Text(
                    "This donut is called 'Avocado Dicaprio' from JCO. \nDonuts filled with avocado cream, dipped in avocado \nchocolate, and garnished with dark chocolate flakes."),
              ],
            ),
            SizedBox(
              width: 7,
            ),
            Icon(Icons.thumb_up_alt, color: Colors.amber, size: 20),
            Icon(Icons.thumb_up_alt, color: Colors.amber, size: 20),
            Icon(Icons.thumb_up_alt, color: Colors.amber, size: 20),
            Icon(Icons.thumb_up_alt, color: Colors.amber, size: 20),
            Icon(Icons.thumb_up_alt_outlined, color: Colors.amber, size: 20),
            SizedBox(
              width: 7,
            ),
            Image.asset("assets/images/avocado_dicaprio.jpg", height: 200),
          ],
        ),
      ),
    );
  }
}
