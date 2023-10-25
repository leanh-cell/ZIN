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
        padding: EdgeInsets.only(left: 16, top: 27),
        child: Column(children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 17, top: 10, bottom: 10,right: 17),
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
                    // width: 10,
                    // height: 6,
                  )
                ]),
              ),
              Expanded(
                flex: 2,
                child: Container())
            ],
          ),
          SizedBox(height: 17,),
          ...List.generate(
            10,
            (index) => ProductItem(
              title: "product 1",
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
