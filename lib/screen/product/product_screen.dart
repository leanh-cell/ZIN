import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/screen/cart/cart_screen.dart';
import 'package:zin/screen/product/product_item.dart';

import '../home/home_screen.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      appBar: itemappbar(key: _scaffoldKey),
      drawer: itemDrawer(),
      endDrawer: itemEndDrawer(context: context),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(left: 16, right: 230, bottom: 15, top: 27),
            padding: EdgeInsets.only(left: 17, top: 10, bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey)),
            child: Row(children: [
              Text(
                "Sắp xếp theo",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 8,
              ),
              SvgPicture.asset(
                "assets/icons/arrow_downward.svg",
                width: 10,
                height: 6,
              )
            ]),
          ),
          ...List.generate(
            10,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ProductItem(
                title: "product 1",
              ),
            ),
          ),
          SizedBox(
            height: 100,
          )
        ]),
      ),
    );
  }
}
