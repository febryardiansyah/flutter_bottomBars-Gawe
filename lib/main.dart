import 'package:flutter/material.dart';
import 'home_widget.dart';
import 'new_page.dart';

void main() => runApp(MaterialApp(
  title: 'Named',
  initialRoute: '/',
  debugShowCheckedModeBanner: false,
  routes: <String, WidgetBuilder>{
    '/':(BuildContext context) => Home(),
    '/notif':(BuildContext context) => Notif(),
  }
));


