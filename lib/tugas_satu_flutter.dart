// import 'package:flutter/material.dart';

// class TugasSatuFlutter extends StatelessWidget {
//   const TugasSatuFlutter({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 49, 198, 178),
//         title: Text("Profil Saya"),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search, color: Colors.black12,),
//             onPressed: () {
//             },
//           )
//         ],
//       ),
//       drawer: Drawer(),
//       backgroundColor: const Color.fromARGB(255, 179, 240, 255),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.message_outlined),
//         onPressed:(){}),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 20),
//               Center(
//                 child: 
//                   CircleAvatar(
//                     backgroundImage: NetworkImage("https://i.pinimg.com/736x/b1/ea/98/b1ea98b3d9e7fcd4b0e28f1c2e0ab15a.jpg"),
//                     radius: 70,
//                   ),
//               ),
//           SizedBox(height: 20,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Dinda Hanifa", style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold
//               ),),
//             ],
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.location_on, color: const Color.fromARGB(255, 0, 0, 0),),
//               SizedBox(width: 5),
//               Text("DKI Jakarta"),
//             ],
//           )
//           , SizedBox(height: 20),
//           Center(
//             child:Container(
//               padding: EdgeInsets.all(12),
//               margin: EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(Radius.circular(25)),
//                 border: Border.all(
//                   color: const Color.fromARGB(255, 255, 255, 255),
//                   width: 1,
//                 )
//               ),
//               width: 300,
//               child: Text(
//                  "Saya adalah lulusan baru (Fresh Graduate) dari Universitas Islam Negeri (UIN) Syarif Hidayatullah Jakarta, jurusan Fisika Murni. Selama perkuliahan, saya aktif dalam berbagai organisasi kampus dan komunitas luar kampus, serta memiliki pengalaman kerja dan magang di bidang pendidikan, riset, dan administrasi",
//                  textAlign: TextAlign.justify,
//                  style: TextStyle(fontSize: 16),
//               ),
//             )
//           ),
//         ],
//       ),
//     );
//   }
// }

  // Expanded(
          //   child: Container(
          //     padding: EdgeInsets.all(10),
          //     margin: EdgeInsets.all(12),
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10),
          //       border: Border.all(
          //         color: Colors.white,
          //         width: 1,
          //       ),
          //     ),
          //     child: Center(child: Text("Postingan"),),
          //   ),
          //   ),
              // ]
            // ),