import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/components/widget_button.dart';
import 'package:zin/screen/cart/pay_screen.dart';
import 'package:zin/screen/product/product_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFFBF4F5),
      appBar: itemappbar(key: _scaffoldKey),
      drawer: itemDrawer(),
      endDrawer: itemEndDrawer(context: context),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16, top: 19, right: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Giỏ hàng",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 19,
          ),
          itemProductCart()
        ]),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 16, top: 26, bottom: 26, right: 16),
        child: Row(children: [
          Expanded(
            child: Row(
              children: [
                Text(
                  "Tổng tiền",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "1.899.000đ",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(PayScreen());
            },
            child: Container(
              padding:
                  EdgeInsets.only(left: 27, top: 10, right: 27, bottom: 10),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Tạo đơn",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget itemProductCart() {
    return Container(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/co.jpeg",
              width: 74,
              height: 79,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Bộ 6 món mỹ phẩm trang điểmmmmmmmmmmm",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Text(
                    "1.899.000" + "đ",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFCF5763)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 22,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        bottomLeft: Radius.circular(4)),
                                    border: Border.all(color: Colors.grey)
                                    // border: Border(
                                    //   top: BorderSide(color: Colors.grey, width: 1),
                                    //   left: BorderSide(color: Colors.grey, width: 1),
                                    //   bottom: BorderSide(color: Colors.grey, width: 1),
                                    // ),
                                    ),
                                child: Center(
                                  child: Container(
                                    height: 1,
                                    width: 4.67,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 20,
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.only(topLeft: Radius.circular(4),bottomLeft: Radius.circular(4)),
                                  // border: Border.all(color: Colors.grey)
                                  border: Border(
                                    top: BorderSide(
                                        color: Colors.grey, width: 1),
                                    // left: BorderSide(color: Colors.grey, width: 1),
                                    bottom: BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                ),
                                child: Center(child: Text("240")),
                              ),
                              Container(
                                width: 22,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(4),
                                        bottomRight: Radius.circular(4)),
                                    border: Border.all(color: Colors.grey)
                                    // border: Border(
                                    //   top: BorderSide(color: Colors.grey, width: 1),
                                    //   left: BorderSide(color: Colors.grey, width: 1),
                                    //   bottom: BorderSide(color: Colors.grey, width: 1),
                                    // ),
                                    ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 9.5,
                                      left: 7,
                                      child: Container(
                                        height: 1,
                                        width: 4.67,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Positioned(
                                      top: 7.5,
                                      left: 9,
                                      right: null,
                                      child: Container(
                                        height: 4.67,
                                        width: 1,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset("assets/icons/trash.svg")
                      ],
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
