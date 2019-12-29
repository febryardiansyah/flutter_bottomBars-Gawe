import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Beranda',style: TextStyle(color: Colors.purple),),
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.notifications,color: Colors.purple,),
              onPressed:() {
                Navigator.pushNamed(context, '/notif');
              },
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            location(),
            poin(),
            artikel(),
          ],
        )
      ),
    );
  }
}
class Notif extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Notifikasi',style: TextStyle(color: Colors.white),),backgroundColor: Colors.purple,),
      body: Column(
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.transparent,
            margin: EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.transparent,
                      image: DecorationImage(image: AssetImage('images/voucher.png'),fit: BoxFit.fill)
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Hore! Kamu Mendapatkan Voucher',style: TextStyle(fontSize: 15),),
                      Text('Rp.10.000',style: TextStyle(fontSize: 15),),
                      Text('31 Februari 2019,13.00 WIB',style: TextStyle(fontSize: 12,color: Colors.black45),),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.transparent,
            margin: EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.transparent,
                      image: DecorationImage(image: AssetImage('images/voucher.png'),fit: BoxFit.fill)
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Hore! Kamu Mendapatkan Voucher',style: TextStyle(fontSize: 15),),
                      Text('Gratis Panci PUBG Version',style: TextStyle(fontSize: 15),),
                      Text('12 Februari 2019,13.00 WIB',style: TextStyle(fontSize: 12,color: Colors.black45),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
Widget location(){
  return Container(
    padding: EdgeInsets.only(top: 10),
    child: Card(
      elevation: 8,
      child: Padding(
        padding: EdgeInsets.only(top: 10,bottom: 10),
        child: Row(
          children: <Widget>[
            Icon(Icons.location_on,color: Colors.black45,),
            Padding(
              padding: EdgeInsets.only(left: 70),
              child: Text('Jl.Singa Wedana, Purwokerto Barat',style: TextStyle(color: Colors.black45),),
            )
          ],
        ),
      ),
    ),
  );
}
Widget poin(){
  return Card(
    elevation: 8,
    margin: EdgeInsets.only(top: 10,bottom: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      width: 370,
      height: 250,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Poin',style: TextStyle(color: Colors.black45,fontSize: 20,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text('999',style: TextStyle(color: Colors.black45,fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
              Column(
                children: <Widget>[
                  new Container(
                    height: 1,
                    margin: EdgeInsets.only(top:10,left: 5,right: 5,bottom: 10),
                    color: Colors.black45,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.ac_unit,size: 30,color: Colors.purple,),
                      Divider(),
                      Text('AC',style: TextStyle(color: Colors.black,fontSize: 15),),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.table_chart,size: 30,color: Colors.purple,),
                            Divider(),
                            Text('Kulkas',style: TextStyle(color: Colors.black,fontSize: 15),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.tv,size: 30,color: Colors.purple,),
                      Divider(),
                      Text('TV',style: TextStyle(color: Colors.black,fontSize: 15),),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.lightbulb_outline,size: 30,color: Colors.purple,),
                            Divider(),
                            Text('Listrik',style: TextStyle(color: Colors.black,fontSize: 15),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.chrome_reader_mode,size: 30,color: Colors.purple,),
                      Divider(),
                      Text('Mesin Cuci',style: TextStyle(color: Colors.black,fontSize: 15),),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.markunread_mailbox,size: 25,color: Colors.purple,),
                            Divider(),
                            Text('Ledeng',style: TextStyle(color: Colors.black,fontSize: 15),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
Widget artikel(){
  return Container(
//    color: Colors.grey,
    margin: EdgeInsets.all(15),
    height: 170,
//    color: Colors.purple,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(8),
            color: Colors.white
          ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(right: 10,left: 10),
          height: 50,
          width: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.transparent,
                  image: DecorationImage(image: AssetImage('images/palu.png'),fit: BoxFit.fill)
                ),
                height: 90,
                width: 270,
              ),
              Divider(),
              Text('Cara menggunakan Palu',style: TextStyle(fontSize: 15),),
              Row(
                children: <Widget>[
                  Icon(Icons.person_outline,color: Colors.black45,size: 20,),
                  Text('Steve Jobs',style: TextStyle(fontSize: 12,color: Colors.black45),),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      Icon(Icons.favorite),
                      Text('696')
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.grey[200]),
              borderRadius: BorderRadius.circular(8),
              color: Colors.white
          ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(right: 10,left: 10),
          height: 50,
          width: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.transparent,
                    image: DecorationImage(image: AssetImage('images/ac.jpeg'),fit: BoxFit.fill)
                ),
                height: 90,
                width: 270,
              ),
              Divider(),
              Text('Cara menyalakan Ac',style: TextStyle(fontSize: 15),),
              Row(
                children: <Widget>[
                  Icon(Icons.person_outline,color: Colors.black45,size: 20,),
                  Text('Mark Zuckerberg',style: TextStyle(fontSize: 12,color: Colors.black45),),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      Icon(Icons.favorite),
                      Text('919')
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.grey[200]),
              borderRadius: BorderRadius.circular(8),
              color: Colors.white
          ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(right: 10,left: 10),
          height: 50,
          width: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.transparent,
                    image: DecorationImage(image: AssetImage('images/fridge.jpeg'),fit: BoxFit.fill)
                ),
                height: 90,
                width: 270,
              ),
              Divider(),
              Text('10 Tips Membuka Kulkas',style: TextStyle(fontSize: 15),),
              Row(
                children: <Widget>[
                  Icon(Icons.person_outline,color: Colors.black45,size: 20,),
                  Text('Bill Gates',style: TextStyle(fontSize: 12,color: Colors.black45),),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      Icon(Icons.favorite),
                      Text('1000')
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}