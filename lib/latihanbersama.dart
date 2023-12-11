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
        title: Text("Aplikasi ku"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.thumb_up_alt_outlined, size: 128),
            SizedBox(height: 16),
            Text("Nama"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Fahmi"),
                Text("Ali"),
              ],
            ),
            Image.asset("assets/images/bakso.jpeg", height: 100),
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: Image.network(
                "https://picsum.photos/id/237/200/300",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
