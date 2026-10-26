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
        // body: Row( //-> untuk menampilkan widget secara horizontal
        // mainAxisAlignment: MainAxisAlignment.center,//-> untuk menempatkan widget di tengah layar secara vertikal
        // // mainAxisSize: MainAxisSize.max,//-> untuk menempatkan widget di tengah layar secara horizontal
        // crossAxisAlignment: CrossAxisAlignment.start,//-> untuk menempatkan widget di samping kiri layar secara horizontal
        //   children: [ //-> menggunakan children karna akan menampung banyak widget
           
        //   Container(
        //     width: 100,
        //     height: 50,
        //     color: Colors.red,
        //     child: Text('Container 1',style: TextStyle(color: Colors.white)),
        //   ),
        //   Container(
        //     width: 100,
        //     height: 50,
        //     color: Colors.red,
        //     child: Text('Container 2',style: TextStyle(color: Colors.white)),
        //   ),
        //   Container(
        //     width: 100,
        //     height: 50,
        //     color: Colors.red,
        //     child: Text('Container 3',style: TextStyle(color: Colors.white)),
        //   ),
        //   Container(
        //     width: 100,
        //     height: 50,
        //     color: Colors.red,
        //     child: Text('Container 4',style: TextStyle(color: Colors.white)),
        //   ),
        //   ],
        // ),
        // body: Stack( //-> untuk menumpuk widget di atas satu sama lain
        // body: IndexedStack( //-> untuk menumpuk widget di atas satu sama lain (tetapi hanya menampilkan widget yang berada di index yang ditentukan)
        //   index: 1, //-> untuk menampilkan widget yang berada di index ke 1
        //   children: [
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       width: 150,
        //       height: 150,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.blue,
        //     ),
        //   ],
        // )
      //   body: GridView.count( //-> untuk menampilkan widget secara grid
      //     padding: EdgeInsets.all(10), //-> untuk menambahkan padding di sekitar grid
      //     crossAxisCount: 2, //-> untuk menentukan jumlah kolom
      //     mainAxisSpacing: 5, //-> untuk menentukan jarak antar widget secara vertikal
      //     crossAxisSpacing: 5, //-> untuk menentukan jarak antar widget secara horizontal
      //     children: [
            
      //       Container(color: Colors.blue,),
      //       Container(color: Colors.blue,),
      //       Container(color: Colors.blue,),
      //       Container(color: Colors.blue,),
      //       Container(color: Colors.blue,),
      //       Container(color: Colors.blue,),
      //     ],
      //  )
      // body: GridView.builder( //-> untuk menampilkan widget secara grid secara dinamis
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2, //-> untuk menentukan jumlah kolom
      //     mainAxisSpacing: 5, //-> untuk menentukan jarak antar widget secara vertikal
      //     crossAxisSpacing: 5, //-> untuk menentukan jarak antar widget secara horizontal
      //   ),
      //   itemCount: 20, //-> untuk menentukan jumlah widget yang akan ditampilkan
      //   itemBuilder: (context, index) {
      //     return Container(
      //       color: Colors.blue [100 * (index % 8) +2], //-> untuk menentukan warna widget secara dinamis
      //       child: Center(
      //         child: Text('Item $index',style: TextStyle(color: Colors.white)), //-> untuk menampilkan teks di tengah widget
      //       ),
      //     );
      //   },
      // )
      // body: ListView( //-> untuk menampilkan widget secara list
      // // scrollDirection: Axis.vertical, //-> untuk menentukan arah scroll
      // scrollDirection: Axis.horizontal, //-> untuk menentukan arah scroll
      //   children: [
      //     Container(
      //       height: 100,
      //       color: Colors.red,
      //       child: Center(
      //         child: Text('Container 1',style: TextStyle(color: Colors.white)),
      //       ),
      //     ),
      //     Container(
      //       height: 100,
      //       color: Colors.green,
      //       child: Center(
      //         child: Text('Container 2',style: TextStyle(color: Colors.white)),
      //       ),
      //     ),
      //     Container(
      //       height: 100,
      //       color: Colors.blue,
      //       child: Center(
      //         child: Text('Container 3',style: TextStyle(color: Colors.white)),
      //       ),
      //     ),
      //     Container(
      //       height: 100,
      //       color: Colors.yellow,
      //       child: Center(
      //         child: Text('Container 4',style: TextStyle(color: Colors.white)),
      //       ),
      //     ),
      //   ],
      // )
      // body: ListView.builder( //-> untuk menampilkan widget secara list secara dinamis
      //   itemCount: 10, //-> untuk menentukan jumlah widget yang akan ditampilkan
      //   itemBuilder: (context, index) {
      //     return ListTile( //-> untuk menampilkan widget secara list
      //       leading: Icon(Icons.person), //-> untuk menambahkan icon di sebelah kiri widget
      //       title: Text('Item $index'), //-> untuk menampilkan teks di tengah widget
      //       subtitle: Text('Subtitle $index'), //-> untuk menampilkan teks di bawah teks utama
      //       trailing: Icon(Icons.arrow_forward), //-> untuk menambahkan icon di sebelah kanan widget
      //     );
      //   },
      // )
      // body: ListView.separated( //-> untuk menampilkan widget secara list secara dinamis dengan pemisah
      //   itemCount: 20, //-> untuk menentukan jumlah widget yang akan ditampilkan
      //   itemBuilder: (context, index) {
      //     return ListTile( //-> untuk menampilkan widget secara list
      //       leading: Icon(Icons.person), //-> untuk menambahkan icon di sebelah kiri widget
      //       title: Text('Item $index'), //-> untuk menampilkan teks di tengah widget
      //       subtitle: Text('Subtitle $index'), //-> untuk menampilkan teks di bawah teks utama
      //       trailing: Icon(Icons.arrow_forward), //-> untuk menambahkan icon di sebelah kanan widget
      //     );
      //   },
      //   separatorBuilder: (context, index) { //-> untuk menambahkan pemisah antar widget
      //     return Divider( //-> untuk menambahkan garis pemisah antar widget
      //       color: Colors.white, //-> untuk mengubah warna garis pemisah
      //     );
      //   },
      // )
      // body: ListView.custom( //-> untuk menampilkan widget secara list secara dinamis dengan pemisah
      //   childrenDelegate: SliverChildBuilderDelegate(
      //     (context, index) {
      //       return ListTile( //-> untuk menampilkan widget secara list
      //         leading: Icon(Icons.person), //-> untuk menambahkan icon di sebelah kiri widget
      //         title: Text('Item $index'), //-> untuk menampilkan teks di tengah widget
      //         subtitle: Text('Subtitle $index'), //-> untuk menampilkan teks di bawah teks utama
      //         trailing: Icon(Icons.arrow_forward), //-> untuk menambahkan icon di sebelah kanan widget
      //       );
      //     },
      //     childCount: 20, //-> untuk menentukan jumlah widget yang akan ditampilkan
      //   ),
      // )
      body: ListView.separated(
        itemCount: 20, //-> untuk menentukan jumlah widget yang akan ditampilkan
        itemBuilder: (context, index) {
          return ListTile( //-> untuk menampilkan widget secara list
            leading: Icon(Icons.person), //-> untuk menambahkan icon di sebelah kiri widget
            title: Text('Item $index'), //-> untuk menampilkan teks di tengah widget
            subtitle: Text('Subtitle $index'), //-> untuk menampilkan teks di bawah teks utama
            trailing: Icon(Icons.arrow_forward), //-> untuk menambahkan icon di sebelah kanan widget
          );
        },
        separatorBuilder: (context, index) { //-> untuk menambahkan pemisah antar widget
          return Divider( //-> untuk menambahkan garis pemisah antar widget
            color: Colors.white, //-> untuk mengubah warna garis pemisah
          );
        },
      )
    );
  }
}