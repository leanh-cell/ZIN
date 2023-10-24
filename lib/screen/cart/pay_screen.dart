import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/screen/cart/cart_screen.dart';
import 'package:zin/screen/product/product_screen.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFF2F2F2),
      appBar: itemappbar(key: _scaffoldKey),
      drawer: itemDrawer(),
      endDrawer: itemEndDrawer(context: context),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 14),
        child: Column(children: [
          InkWell(
            splashColor: Colors.white.withOpacity(0),
            onTap: () {
              Get.back();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 12),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                    weight: 600,
                  ),
                  Text(
                    "Thanh toán",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
            color: Colors.white,
            child: Column(children: [
              Row(
                children: [
                  SvgPicture.asset("assets/icons/location.svg"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Địa chỉ nhận hàng",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    "Phương Anh",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8, right: 8),
                    width: 1,
                    height: 20,
                    color: Color(0xFFD9D9D9),
                  ),
                  Text(
                    "0989117832",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8, right: 8),
                    width: 1,
                    height: 20,
                    color: Color(0xFFD9D9D9),
                  ),
                  Expanded(
                    child: Text(
                      "tranthipa@gmail.com",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Bình Lăng" +
                        ',' +
                        "Tiền Phong" +
                        "," +
                        "Ân Thi" +
                        ',' +
                        "Hưng Yên",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ]),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
            color: Colors.white,
            child: Column(children: [
              Row(
                children: [
                  SvgPicture.asset("assets/icons/moneypay.svg"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Địa chỉ nhận hàng",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              ListTile(
                title: const Text("Thanh toán khi nhận hàng"),
                leading: Radio<String>(
                  value: "Thanh toán khi nhận hàng",
                  groupValue: "1",
                  onChanged: (value) {
                    setState(() {
                      // _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Thanh toán chuyển khoản"),
                leading: Radio<String>(
                  value: "Thanh toán chuyển khoản",
                  groupValue: "1",
                  onChanged: (value) {
                    setState(() {
                      // _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Thanh toán ví VNPay"),
                leading: Radio<String>(
                  value: "Thanh toán ví VNPay",
                  groupValue: "1",
                  onChanged: (value) {
                    setState(() {
                      // _character = value;
                    });
                  },
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
            color: Colors.white,
            child: Column(children: [
              Row(
                children: [
                  SvgPicture.asset("assets/icons/car.svg"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Đơn vị vận chuyển",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              ListTile(
                title: const Text("Viettel Post"),
                leading: Radio<String>(
                  value: "Viettel Post",
                  groupValue: "1",
                  onChanged: (value) {
                    setState(() {
                      // _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Giao hàng tiết kiệm"),
                leading: Radio<String>(
                  value: "Giao hàng tiết kiệm",
                  groupValue: "1",
                  onChanged: (value) {
                    setState(() {
                      // _character = value;
                    });
                  },
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/list.svg"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Đơn vị vận chuyển",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              itemProductCart(),
              itemProductCart(),
              itemProductCart(),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xFFC4C4C4)),
                    ),
                    hintText: "Thêm ghi chú về đơn hàng",
                    hintStyle: TextStyle(
                      color: Color(0xFFC4C4C4),
                    )),
              ),
            ]),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/money.svg"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Thông tin thanh toán",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Tổng tiền hàng",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "1.899.000" + "đ",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Phí vận chuyển",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "0" + "đ",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Tổng số tiền",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "1.899.000" + "đ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor),
                  )
                ],
              )
            ]),
          ),
          SizedBox(
            height: 8,
          ),
        ]),
      ),
      bottomNavigationBar: Container(
          height: 90,
          color: Colors.white,
          padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tổng thanh toán",
                      style: TextStyle(),
                    ),
                    Text(
                      "1.899.000" + "đ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 23, top: 10, right: 23, bottom: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Text("Đặt hàng",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
              )
            ],
          )),
    );
  }

  Widget itemProductCart() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
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
                  Text(
                    "Số lượng: " + "2",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ]),
          ),
        ],
      ),
    );
  }


  }
