import 'package:flutter/material.dart';

class gambar extends StatelessWidget {
  final List<String> foto = [
    'asset/image/doraemon.jpg',
    'asset/image/haikyuu.jpg',
    'asset/image/subasa.jpg',
    'asset/image/naruto.jpg',
    'asset/image/jujutsu_kaisen.jpg',
    'asset/image/one_piece.jpg',
  ];

  final List<String> sub = [
    'DORAEMON',
    'HAIKYUU',
    'TSUBASA',
    'NARUTO',
    'JUJUTSU KAISEN',
    'ONE PIECE',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("GAMBAR", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30)),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: ListView.builder(
        itemCount: foto.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                foto[index],
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}
