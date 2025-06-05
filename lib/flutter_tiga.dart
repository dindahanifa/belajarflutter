import 'package:flutter/material.dart';

class FlutterTiga extends StatefulWidget {
   static const String id = '/flutterTiga';

  const FlutterTiga({super.key});

  @override
  State<FlutterTiga> createState() => _FlutterTigaState();
}

class _FlutterTigaState extends State<FlutterTiga> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptipons = <Widget>[
    Text('Home Page'),
    Text('Setting Page'),
    Text('Profil Page'),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "din_haf",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_outlined),
            onPressed: () {
              showMenu(
                context: context, 
                position: RelativeRect.fromLTRB(1000, 80, 0, 0),
                items: [
                  PopupMenuItem(child: Text('Reel')),
                  PopupMenuItem(child: Text('Posting')),
                  PopupMenuItem(child: Text('Cerita')),
                  PopupMenuItem(child: Text('Sorotan Cerita')),
                  PopupMenuItem(child: Text('Siaran Langsung')),
                  PopupMenuItem(child: Text('Iklan')),
                  PopupMenuItem(child: Text('Saluran')),
                ]);
            },
            ),
        ],
      ),

// Foto
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [ _widgetOptipons.elementAt(_selectedIndex),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                SizedBox(height: 5,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors:[Colors.pink, Colors.orangeAccent], 
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipOval(
                            child: Image.asset('assets/gambarprofil.jpg', fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      ),
            
            // Posting, Mengikuti, Pengikut
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                          Padding(padding: EdgeInsets.only(left: 90, top: 25)),
                          Text('Postingan', style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),),
                          SizedBox(height: 5,),
                          Text('0'),
                            ]
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 90, top: 25)),
                          Text('Pengikut', style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),),
                          SizedBox(height: 5,),
                          Text('1055'),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 90, top: 25)),
                          Text('Mengikuti', style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),),
                          SizedBox(height: 5,),
                          Text('5')
                        ],
                      )
                    ],
                  ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20),
                      child: Text('Dinda Hanifa', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                      ),
                    ],
                  ),
            
            // Kotak Tiga
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: Container(
                        margin: EdgeInsets.all(3),
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                        decoration: BoxDecoration(
                          color: Color(0xffDDDDDD),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xffDDDDDD),
                            width: 1,
                          )
                        ),
                        child: Center(child: Text('Email'),),
                      )),
                      Expanded(child: Container(
                        margin: EdgeInsets.all(3),
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                        decoration: BoxDecoration(
                          color: Color(0xffDDDDDD),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xffDDDDDD),
                            width: 1
                          )
                        ),
                        child: Center(child: Text('No Hp'),),
                      )),
                      Expanded(child: Container(
                        margin: EdgeInsets.all(3),
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                        decoration: BoxDecoration(
                          color: Color(0xffDDDDDD),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xffDDDDDD),
                            width: 1
                          )
                        ),
                        child: Center(child: Text('Bagikan Profil'),),
                      ))
                    ],
                  ),
            
            // Garis Horizontal
                  SizedBox(height: 5,),
                  Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
            
            // Icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.camera_alt),
                      Icon(Icons.share),
                      Icon(Icons.people)
                    ],
                  ),
            
            // Garis
                  SizedBox(height: 5,),
                  Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                  
            // Kotak
                  GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

