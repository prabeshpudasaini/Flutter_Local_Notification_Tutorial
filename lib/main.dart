import 'package:flutter/material.dart';
import 'package:flutter_awesome_notifications_tutorial/home_page.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.teal,
      //     brightness: Brightness.dark,
      //   ),
      //   primarySwatch: Colors.blueGrey,
      //   indicatorColor: Colors.blueGrey,
      //   useMaterial3: true,
      // ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      //   primarySwatch: Colors.blue,
      // ),

      // themeMode: ThemeMode.dark,
      
      title: 'Green Thumbs',
      home: HomePage(),
    );
  }
}
