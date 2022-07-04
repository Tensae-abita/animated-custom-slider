import 'package:flutter/material.dart';
import 'package:sania/app_bar.dart';
import 'package:sania/body.dart';
import 'package:sania/bottom_nav.dart';
import 'package:sania/slider_widget.dart';

class Home_Page extends StatefulWidget {
  Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFF2F2F2),
        title: Appbar(),
      ),
      body: Slider_Widget(),
      // bottomNavigationBar: Bottom_nav(),
    );
  }
}