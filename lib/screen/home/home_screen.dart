import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/screen/seller/become_a_seller.dart';
import 'package:zin/screen/strategic_partner/become_a_strategic_partner.dart';
import 'package:zin/screen/home/widget/body.dart';
import 'package:zin/screen/product/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        child: Column(children: [
          Container(
            child: Image.asset(
              "assets/images/banner.png",
              width: Get.width,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(children: [
              InkWell(
                onTap: () {
                  Get.off(BecomeASeller());
                },
                child: Container(
                    width: (Get.width - 40) / 2,
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, right: 12, left: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(207, 87, 99, 1),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/group.svg"),
                        SizedBox(
                          width: 3,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Trở thành nhà bán hàng",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Xem chi tiết ",
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.white),
                                ),
                                Icon(Icons.arrow_forward,
                                    size: 11, color: Colors.white)
                              ],
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              // Spacer(),
              SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: () {
                  Get.off(BecomeAStrategicPartnerr());
                },
                child: Container(
                  width: (Get.width - 40) / 2,
                  padding:
                      EdgeInsets.only(top: 8, bottom: 8, right: 12, left: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/icons/member.svg"),
                      SizedBox(
                        width: 3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Trở thành đối tác chiến lược",
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFCF5763)),
                          ),
                          Row(
                            children: [
                              Text(
                                "Xem chi tiết ",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xFFCF5763)),
                              ),
                              Icon(Icons.arrow_forward,
                                  size: 11, color: Color(0xFFCF5763))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 23,
          ),
          WidgetBody(),
        ]),
      ),
    );
  }
}
