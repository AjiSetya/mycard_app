import 'package:flutter/material.dart';

// fungsi utama untuk menjalankan project kita
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("kartu Nama"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Row(
          // mengubah posisi anak secara horizontal
          crossAxisAlignment: CrossAxisAlignment.center,
          // mengubah posisi anak secara vertikal
          mainAxisAlignment: MainAxisAlignment.center,
          //mengurutkan anak dari ats ke bawah/sebaliknya
          verticalDirection: VerticalDirection.down,
          // mengatur tinggi si column (maksimal/minimal)
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
                child: Image(
              image: AssetImage("image/img_error.png"),
            )),
            Text("Gambar Rusak"),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text("Kontainer 1"),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
