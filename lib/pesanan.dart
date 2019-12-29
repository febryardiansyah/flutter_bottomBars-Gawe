import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pesanan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Riwayat',style: TextStyle(color: Colors.purple),),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            semuaPesanan(),
          ],
        ),
      ),
    );
  }
}
Widget semuaPesanan(){
  return Container(
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Febry Ardiansyah',style: TextStyle(fontSize: 20),),
                  Text('Pekerjaan Selesei',style: TextStyle(fontSize: 13,color: Colors.black45),),
                  Column(
                    children: <Widget>[
                      Text('Senin,12/7/2019',style: TextStyle(fontSize: 13,color: Colors.black45),),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('Rp.75.000',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Fajar Malik',style: TextStyle(fontSize: 20),),
                  Text('Pekerjaan Selesei',style: TextStyle(fontSize: 13,color: Colors.black45),),
                  Column(
                    children: <Widget>[
                      Text('Rabu,9/3/2019',style: TextStyle(fontSize: 13,color: Colors.black45),),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('Rp.40.000',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Bagus Bayu',style: TextStyle(fontSize: 20,color: Colors.black45),),
                  Text('Pekerjaan Dibatalkan',style: TextStyle(fontSize: 13,color: Colors.black45),),
                  Column(
                    children: <Widget>[
                      Text('Sabtu,1/2/2019',style: TextStyle(fontSize: 13,color: Colors.black45),),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('Rp.55.000',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black45),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}