import 'package:flutter/material.dart';

void main() {
  runApp(Myflutter()); //-> untuk menjalankan aplikasi Flutter dan menampilkan widget Myflutter sebagai root widget
}
class Myflutter extends StatelessWidget {
  const Myflutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false, // -> untuk menghilangkan banner debug di pojok kanan atas
      home: Scaffold( //-> pondasi dari aplikasi, Scaffold menyediakan struktur dasar untuk aplikasi
        backgroundColor: const Color.fromARGB(255, 96, 0, 0), //-> untuk mengubah warna beground body
        appBar: AppBar(//-> untuk bar aplikasi
        toolbarHeight: 60.0, //-> untuk mengubah tinggi AppBar
        actionsPadding:EdgeInsets.all(20.0), //-> untuk menambahkan padding pada action di AppBar
        leading: Icon(Icons.menu), //-> untuk menambahkan icon menu di sebelah kiri AppBar
          title: Text('Myflutter',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)), 
          actions: [
            Icon(Icons.menu, color: Colors.white,size: 20.0), //-> untuk menambahkan icon menu di sebelah kanan AppBar
          ],
          backgroundColor: Colors.black,
        ),
        // body: Center( //-> untuk menempatkan widget di tengah layar
        //   child: Text('Hello World',style: TextStyle(color: Colors.white)),
        // ),
        // body: Column( //-> untuk menampilkan widget secara vertikal
        body: Row( //-> untuk menampilkan widget secara horizontal
        mainAxisAlignment: MainAxisAlignment.center,//-> untuk menempatkan widget di tengah layar secara vertikal
        // mainAxisSize: MainAxisSize.max,//-> untuk menempatkan widget di tengah layar secara horizontal
        crossAxisAlignment: CrossAxisAlignment.start,//-> untuk menempatkan widget di samping kiri layar secara horizontal
          children: [ //-> menggunakan children karna akan menampung banyak widget
           
          Container(
            width: 100,
            height: 50,
            color: Colors.red,
            child: Text('Container 1',style: TextStyle(color: Colors.white)),
          ),
          Container(
            width: 100,
            height: 50,
            color: Colors.red,
            child: Text('Container 2',style: TextStyle(color: Colors.white)),
          ),
          Container(
            width: 100,
            height: 50,
            color: Colors.red,
            child: Text('Container 3',style: TextStyle(color: Colors.white)),
          ),
          Container(
            width: 100,
            height: 50,
            color: Colors.red,
            child: Text('Container 4',style: TextStyle(color: Colors.white)),
          ),


          ],
        ),
      )
    );
  }
}