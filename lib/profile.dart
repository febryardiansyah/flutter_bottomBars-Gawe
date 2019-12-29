import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Akun',style: TextStyle(color: Colors.purple),),
          backgroundColor: Colors.white,
        ),
        body:Column(
          children: <Widget>[
            nama(),
            setting(),
          ],
        ) ,
      ),
    );
  }
}
Widget nama(){
  return Container(
    height: 100,
    margin: EdgeInsets.only(top: 30,left: 25,right: 20),
//    color: Colors.black45,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black45,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Your Name',style: TextStyle(fontSize: 20),),
              Text('YourName@ittelkom-pwt.ac.id',style: TextStyle(color: Colors.black45),),
              Text('+628569696969',style: TextStyle(color: Colors.black45),),
              Divider(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10,left: 40),
          child: Text(
              'Edit',style: TextStyle(color: Colors.purple,fontSize: 16)
          ),
        )
      ],
    )
  );
}
Widget setting(){
  return Card(
    margin: EdgeInsets.all(10),
    child: Padding(
      padding: EdgeInsets.only(top: 10,left: 30,bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Masukan Kode Promo',style: TextStyle(fontSize: 15),),
          Divider(),
          Text('Voucher Saya',style: TextStyle(fontSize: 15),),
          Divider(),
          Text('Ganti Bahasa',style: TextStyle(fontSize: 15),),
          Divider(),
          Text('Bantuan',style: TextStyle(fontSize: 15),),
          Divider(),
          Text('Syarat Dan Ketentuan',style: TextStyle(fontSize: 15),),
          Divider(),
          Text('Kebijakan Privasi',style: TextStyle(fontSize: 15),),
          Divider(),
          Text('Kasih Nilai')
        ],
      ),
    ),
  );
}