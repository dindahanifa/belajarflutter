import 'package:flutter/material.dart';

class TesFlutter extends StatelessWidget {
  const TesFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// AppBar
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text("din_haf", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
            showMenu(
              context: context, 
              position: RelativeRect.fromLTRB(1000, 80, 0, 0),
              items: [
                PopupMenuItem(child: Text('Edit Profil')),
                PopupMenuItem(child: Text('Pusat Akun')),
                PopupMenuItem(child: Text('Setting'))
              ],
            );
            },
          )
        ],
      ),

// Gambar
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [ 
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                radius: 55,
                backgroundColor: Colors.black,
                child: ClipOval(
                child: 
                Image.asset("assets/gambarprofil.jpg", width: 100,height: 100, fit: BoxFit.cover,),
                ),
              ),
            ],
          ),
        ),

// Tulisan Nama
          SizedBox(height: 5,),
          Row(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Dinda Hanifa", style: TextStyle(
                fontSize: 15, 
                fontWeight: FontWeight.w500)
                ,),
            ),
           ],    
          ),

// Garis Horizontal
          SizedBox(height: 5,),
          Divider(
            color: Colors.black,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),

// Blog Pribadi
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 232, 232),
                borderRadius: BorderRadius.all(Radius.circular(25)),
                border: Border.all(
                  color: const Color.fromARGB(255, 246, 240, 240),
                  width: 1
                )
              ),
              width: 370,
              height: 43,
              child: Text("Blog Pribadi", style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),),
            ),
          ),

// Kotak baris 3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(3),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                  decoration: BoxDecoration( 
                    color: const Color.fromARGB(255, 232, 232, 232),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromARGB(255, 246, 240, 240),
                      width: 1,
                    )
                  ),
                  child: Center(child: Text("Edit Profil")),
                ),
                ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(3),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 232, 232, 232),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromARGB(255, 246, 240, 240),
                      width: 1
                    )
                  ),
                  child: Center(child: Text("Kontak")),
                ),
                ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(3),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 232, 232, 232),
                    border: Border.all(
                      color: const Color.fromARGB(255, 246, 240, 240),
                      width: 0.5
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Bagikan Profil"),),
                ))
            ],
          ),

// Garis Horizontal
          SizedBox(height: 5,),
          Divider(
            color: Colors.black,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),

// tiga icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Icon(Icons.play_arrow),
             Icon(Icons.insert_drive_file),
             Icon(Icons.people)
            ],
          ),

          SizedBox(height: 5,),
          Divider(
            color: Colors.black,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),

          Column(
            children: [
             Center( 
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Text("Abadikan momen bersama teman", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                   SizedBox(height: 8,),
                   Text("Buat postingan pertama anda", style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
                 ],
               ),
             ),
            ],
          )
        ]
      ),
      );
  }
}

