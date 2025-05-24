// import 'package:flutter/material.dart';

// class FlutterLima extends StatefulWidget {
//   const FlutterLima({super.key});

//   @override
//   State<FlutterLima> createState() => _FlutterLimaState();
// }

// class _FlutterLimaState extends State<FlutterLima> {
//   int nilaiTambah = 0;
//   bool tampilkanLoading = false;


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text('Tugas Lima',style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
//         leading: IconButton(icon: Icon(Icons.close),iconSize: 20, onPressed: () {
//         },),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.shop), onPressed: () {},),
//           IconButton(
//             icon: Icon(Icons.more_vert), onPressed: () {
//               showMenu(
//                 context: context, 
//                 position: RelativeRect.fromLTRB(1000, 80, 0, 0),
//                 items: [
//                   PopupMenuItem(child: Text('data')),
//                   PopupMenuItem(child: Text('data')),
//                   PopupMenuItem(child: Text('data')),
//                 ]);
//             },),
//         ],
//     ),

//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           print("tekan disni");
//           setState(() {
//             nilaiTambah++;
//           });
//           print(nilaiTambah);
//         },
//       ),
    
//     body: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(height: 5, width: 10,),
//         Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
//         Row(
//         ),
//       ],
//     ),
//     );
//   }
// }
