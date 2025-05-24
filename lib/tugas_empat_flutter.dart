
import 'package:flutter/material.dart';

class TugasEmpatFlutter extends StatelessWidget {
  const TugasEmpatFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Instagram', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
        leading: Icon(Icons.close, size: 20,),
        actions: [
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: () {
            },
            ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              showMenu(
                context: context, 
                position: RelativeRect.fromLTRB(1000, 80, 0, 0),
                items: [
                  PopupMenuItem(child: Text('Pengaturan'),)
                ]);
            },
            )
        ],
      ),

      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                   IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      showMenu(
                        context: context,
                        position: RelativeRect.fromLTRB(0, 80, 50, 0), 
                        items: [
                          PopupMenuItem(child: Icon(Icons.search)),
                          PopupMenuItem(child: Text('New Product')),
                          PopupMenuItem(child: Text('Catalog')),
                          PopupMenuItem(child: Text('Bestseller')),
                          PopupMenuItem(child: Text('Discount')),
                          PopupMenuItem(child: Text('Our Store')),
                          PopupMenuItem(child: Text('Discount Bundle')),
                        ]);
                    },
                    ),
                    SizedBox(width: 8,),
                    Text('Moncayo.official', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 80, top: 8)),
                        Icon(Icons.search),
                        Padding(padding: EdgeInsets.only(left: 9)),
                        Icon(Icons.shop_sharp),
                        Padding(padding: EdgeInsets.only(left: 9)),
                        IconButton(
                           icon: Icon(Icons.people),
                           onPressed: () {
                            showMenu(
                              context: context, 
                              position: RelativeRect.fromLTRB(1000, 90, 0, 0),
                              items: [
                                PopupMenuItem(child: Text('Akun'))
                              ]
                              );
                           },),
                        SizedBox(width: 8,),
                      ],
                    ),
                  ],
            ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 0,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 1)),
                Row(
                  children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/flutterempat/a.jpeg'),
                      ),
                      SizedBox(width: 10, height: 1,),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 1, top: 1)),
                        Text('Mancayo.official'),
                        SizedBox(width: 10,),
                        Padding(padding: EdgeInsets.only(left: 100, top: 1)),
                        Text('mancayo.official@gmail.com', style: TextStyle(fontSize: 10),),
                        SizedBox(height: 5,),
                        Text('08123456789', style: TextStyle(fontSize: 10),),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Container(
                  margin: EdgeInsets.only(top: 0, left: 5, right: 5),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: Center(child: Text('Toko'),),
                )),
                Expanded(child: Container(
                  margin: EdgeInsets.only(top: 0, left: 5, right: 5),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1
                    ),
                  ),
                  child: Center(child: Text('Produk'),),
                )),
                Expanded(child: Container(
                  margin: EdgeInsets.only(top: 0, left: 5, right: 5),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1
                    ),
                  ),
                  child: Center(child: Text('Kategori'),),
                )),
              ],
            ),
        ],
      ),
    );
  }
}

