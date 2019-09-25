import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// fungsi utama untuk menjalankan project kita
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("kartu Nama"),
            backgroundColor: Colors.blueGrey,
            actions: <Widget>[
              IconButton(
                  color: Colors.amberAccent,
                  icon: Icon(Icons.add),
                  onPressed: () {})
            ],
          ),
          body: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://wallpaperaccess.com/full/729397.jpg"))),
              ),
              tampilanUtama
            ],
          )),
      debugShowCheckedModeBanner: false,
    );
  }

  final tampilanUtama = new Center(
      child: new Column(
    // mengubah posisi anak secara horizontal
    crossAxisAlignment: CrossAxisAlignment.center,
    // mengubah posisi anak secara vertikal
    mainAxisAlignment: MainAxisAlignment.center,
    //mengurutkan anak dari ats ke bawah/sebaliknya
    verticalDirection: VerticalDirection.down,
    // mengatur tinggi si column (maksimal/minimal)
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      CircleAvatar(
        backgroundImage: NetworkImage(
            "https://i.pinimg.com/originals/64/8c/d7/648cd749759267f65925c344b43e1613.jpg"),
        radius: 50.0,
      ),
      Text(
        "M Ilham Setya Aji",
        style: TextStyle(
            fontSize: 30.0,
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold),
      ),
      Text(
        "NISN / NIS",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      Text("7887778 / 0809796"),
      RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0))),
          child: Text("setyaaji07@gmail.com"),
          color: Colors.blueGrey,
          textColor: Colors.white,
          onPressed: () {}),
      RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ]),
                borderRadius: BorderRadius.all(Radius.circular(80.0))),
            child: Text("089630074842"),
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          ),
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          onPressed: () {}),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Text("Alamat"),
      ),
      Text(
        "Jl. Raya Dayeuh, Sukanegara, Kec. Jonggol, Bogor, Jawa Barat 16830",
        textAlign: TextAlign.center,
      ),
    ],
  ));
}
