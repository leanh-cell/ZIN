import 'package:flutter/material.dart';
import 'package:zin/components/appbar.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFF2F2F2),
      appBar: itemappbar(key: _scaffoldKey),
      drawer: itemDrawer(),
      endDrawer: itemEndDrawer(context: context),
      body: SingleChildScrollView(),
    );
  }
}
