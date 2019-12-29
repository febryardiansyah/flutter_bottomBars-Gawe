import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InboxMasuk extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inbox',style: TextStyle(color: Colors.purple),),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              cardDetail('Diterima','Febry Ardiansyah','75.000','out'),
              cardDetail('Diterima','Fajar Malik','40.000','out'),
              cardDetail('Dibatalkan','Bagus Bayu','55.000','in'),
            ],
          )
        ),
      ),
    );
  }
}
Widget cardDetail(title, description, price, type){
  return Card(
    margin: EdgeInsets.only(top: 15,left: 15,right: 15),
    elevation: 8,
    child: ListTile(
      leading: Icon(
        Icons.perm_identity,color: Colors.grey,
      ),
      title: Text(
        description, style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(title),
      trailing: Text(
        'Rp. '+price, style: TextStyle(color: type=='out'?Colors.lightGreen:Colors.redAccent),
      ),
    ),
  );
}