import 'package:flutter/material.dart';

void main() {
  runApp(SekolahBeta());
}

class SekolahBeta extends StatelessWidget {
  const SekolahBeta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Donut JCO",
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
      body: Padding(
        padding: EdgeInsets.fromLTRB(100, 100, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 0, bottom: 17),
                  child: Text(
                    "Donut Avocado Dicaprio JCO",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 41, bottom: 11),
                  child: Text(
                    "A doughnut or donut is a type of food made from leavened fried dough. \nIt is popular in many countries and is prepared in various forms as a \nsweet snack that can be homemade or purchased in bakeries, \nsupermarkets, food stalls, and franchised specialty vendors.",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "This donut is called 'Avocado Dicaprio' from JCO. Donuts filled with \navocado cream, dipped in avocado chocolate, and garnished with \ndark chocolate flakes.",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            for (var i = 0; i < 4; i++)
              Icon(Icons.thumb_up_alt, color: Colors.amber, size: 25),
            Icon(Icons.thumb_up_alt_outlined, color: Colors.amber, size: 25),
            Image.asset("assets/images/avocado_dicaprio.png", height: 200),
          ],
        ),
      ),
    );
  }
}
