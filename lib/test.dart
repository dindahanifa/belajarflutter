// import 'package:flutter/material.dart';

// class FlutterLima extends StatelessWidget {
//   const FlutterLima({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text('Instagram',style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
//         leading: IconButton(icon: Icon(Icons.close),iconSize: 20, onPressed: () {
//         },),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.add), onPressed: () {
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
    
//     body: SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 5,width: 10,),
//           Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   ClipOval(
//                     child: Container(
//                       width: 40,
//                       height: 40,
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(colors: [Colors.pink, Colors.orange],
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                         ),),
//                         child: Padding(padding: EdgeInsets.all(5),
//                         child: ClipOval(
//                           child: ClipOval(
//                             child: Image.asset('assets/abc.jpg', fit: BoxFit.cover,),
//                           ),
//                         ),
//                         ),
//                     ),
//                   ),
//                   TextButton(child: Text('din_haf'), onPressed: () {
//                   },)
//                 ],
//               ),
//               Column(
//                 children: [
//                   IconButton(icon: Icon(Icons.more_vert), onPressed: () {
//                     showMenu(context: context, 
//                     position: RelativeRect.fromLTRB(1000, 80, 0, 0),
//                     items: [
//                       PopupMenuItem(child: Text('data')),
//                     ]);
//                   },)
//                 ],
//               ),
//             ],
//           ),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               SizedBox(height: 1,),
//               Image.asset('assets/abc.jpg', width: 400, height: 400,)
//             ],
//           ),

          
         
//         ],
//       ),
//     )
//     );
//   }
// }
