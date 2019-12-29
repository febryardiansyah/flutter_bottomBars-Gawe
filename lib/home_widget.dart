import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'new_page.dart';
import 'pesanan.dart';
import 'inbox.dart';
import 'profile.dart';

class Home extends StatefulWidget{
  State<StatefulWidget>createState(){
    return _HomeState();
  }
}
class _HomeState extends State<Home>{
  int _currentIndex = 0;
  final List<Widget> _children = [
    NewPage(),
    Pesanan(),
    InboxMasuk(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home,color: Colors.black,),
            title: new Text('Beranda',style: TextStyle(color: Colors.black),),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.description,color: Colors.black,),
            title: new Text('Riwayat',style: TextStyle(color: Colors.black),),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.chat,color: Colors.black,),
            title: new Text('Inbox',style: TextStyle(color: Colors.black),),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person,color: Colors.black,),
            title: new Text('Akun',style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    );
  }
  void onTabTapped (int Index){
    setState(() {
      _currentIndex = Index;
    });
  }
}
