
import 'package:flutter/material.dart';
import 'package:flutter_flipkart_clone/pages/home.dart';
import 'package:flutter_flipkart_clone/pages/search_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
    '/':(context)=>Home(),
      '/search':(context)=>SearchPage()
    },
  ));
}

