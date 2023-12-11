import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sekolah_beta_flutter/todo_model.dart';

void main() {
  runApp(const AplikasiAnimasi());
}

class AplikasiAnimasi extends StatelessWidget {
  const AplikasiAnimasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animasiku",
      home: AnimasiPertama(),
    );
  }
}

class AnimasiPertama extends StatefulWidget {
  AnimasiPertama({super.key});

  @override
  State<AnimasiPertama> createState() => _AnimasiPertamaState();
}

class _AnimasiPertamaState extends State<AnimasiPertama> {
  bool isClicked = false;

  List<Todo> datas = [];

  Future<void> fetchData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      final data = await json.decode(response.body);
      final parsed = List<Map<String, dynamic>>.from(data);
      final todos = parsed
          .map((Map<String, dynamic> paijo) => Todo.fromJson(paijo))
          .toList();
      setState(() {
        datas = todos;
      });
      print(todos);
      // {
      //  "nama": "paijo",
      //  "umur": 12
      // }
    } else {
      print(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    VoidCallback functionKeren = () {
      print('asdads');
    };

    functionKeren();
    functionKeren.call();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Animasi Hero"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => fetchData(),
          child: const Icon(
            (Icons.http),
          ),
        ),
        body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return Text(datas[index].title.toString());
          },
        ));
  }
}

// Halaman kedua
class DetailGambar extends StatelessWidget {
  const DetailGambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Gambar"),
      ),
      body: Column(
        children: [
          Hero(
            tag: "gambar_meja",
            child: Image.network("https://picsum.photos/id/20/3670/2462"),
          ),
          const Hero(
            tag: "ikon",
            child: Icon(
              Icons.abc,
              size: 200,
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
