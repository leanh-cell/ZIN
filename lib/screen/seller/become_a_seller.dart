import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/components/widget_button.dart';
import 'package:zin/screen/home/home_screen.dart';

class BecomeASeller extends StatefulWidget {
  const BecomeASeller({super.key});

  @override
  State<BecomeASeller> createState() => _BecomeASellerState();
}

class _BecomeASellerState extends State<BecomeASeller> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFFFFFFF),
      appBar: itemappbar(key: _scaffoldKey),
      drawer: itemDrawer(),
      endDrawer: itemEndDrawer(context: context),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48, bottom: 16),
              child: Center(
                  child: SvgPicture.asset("assets/images/retention.svg")),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38.0, right: 38, bottom: 16),
              child: Text(
                "Bỏ vốn 100.000vnđ sẽ được hưởng 20%, hưởng bể đồng chia. Mời được người khác nhận ngay 30% + 50,000 Mana",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            ButtonWidget(
              height: 40,
              radius: 8,
              padding: EdgeInsets.only(left: 38, right: 38),
              content: "Đăng ký làm Affiliate",
              contentStyle: TextStyle(
                  color: Color(0xFFCF5763), fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48, bottom: 16),
              child:
                  Center(child: SvgPicture.asset("assets/images/seller.svg")),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38.0, right: 38, bottom: 16),
              child: Text(
                "Bỏ vốn 1.000.000vnđ sẽ được hưởng 40%, hưởng bể đồng chia. Được tham gia vào hội cổ đông và chia thưởng cổ tức",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            ButtonWidget(
              height: 40,
              radius: 8,
              color: Color(0xFFCF5763),
              padding: EdgeInsets.only(left: 38, right: 38),
              content: "Đăng ký làm nhà bán hàng",
              contentStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 29,
            ),
            Text(
              "Chính sách chia thưởng",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins"),
            ),
            SizedBox(
              height: 20,
            ),
            bonus_sharing_policy(
                title: "AFF",
                title1: "10",
                title2: "0",
                title3: "X",
                title4: "100,000"),
            bonus_sharing_policy(
                title: "Người bán hàng",
                title1: "10",
                title2: "0",
                title3: "X",
                title4: "100,000"),
            bonus_sharing_policy(
                title: "Bể đồng chia",
                title1: "10",
                title2: "0",
                title3: "X",
                title4: "100,000"),
            bonus_sharing_policy(
                title: "Cổ đông sáng lập",
                title1: "10",
                title2: "0",
                title3: "X",
                title4: "100,000"),
            bonus_sharing_policy(
                title: "Cổ đông góp vốn",
                title1: "10",
                title2: "0",
                title3: "X",
                title4: "100,000"),
            SizedBox(
              height: 47,
            ),
            Text(
              "Bể Đồng Chia",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Bể đồng chia  “doanh thu” đội nhóm (Cá nhân + F1)",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 10),
              child: Row(
                children: [
                  Text("Thứ 2: "),
                  Text(
                    "14/09/2023 ",
                    style: TextStyle(
                      color: Color(0xFFCF5763),
                    ),
                  ),
                  Container(
                    width: 7,
                    height: 1,
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                  Text(" Chủ nhật: "),
                  Text(
                    "21/09/2023 ",
                    style: TextStyle(
                      color: Color(0xFFCF5763),
                    ),
                  ),
                ],
              ),
            ),
            copper_tank_divided(),
             Padding(
               padding: const EdgeInsets.only(top: 16,left:16,right: 16),
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("- ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                         Flexible(child: Text("Người ở bể cao sẽ được hưởng quyền lợi của các bể phía dưới",))
                       ],
                     ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 8,left:16,right: 16),
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("- ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                         Flexible(child: Text("Hàng tuần nếu chưa ai đạt được mốc 8,9,10 thì phần thưởng vẫn cộng dồn treo đấy, tuần sau ai đạt mốc thì chia",))
                       ],
                     ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 8,left:16,right: 16),
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("- ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                         Flexible(child: Text("Người ở bể cao sẽ được hưởng quyền lợi của các bể phía dưới",))
                       ],
                     ),
             ),
            SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }

  Widget bonus_sharing_policy({
    required String? title,
    required String? title1,
    required String? title2,
    required String? title3,
    required String? title4,
  }) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 20),
      child: Column(
        children: [
          Container(
            width: Get.width,
            padding: EdgeInsets.only(left: 8, top: 13, bottom: 13),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xFFFCEBEE),
            ),
            child: Text(
              title!,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFCF5763)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chia thưởng",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Thưởng điểm bán hàng",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Thuế thu nhập cá nhân",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Điều kiện",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title1! + "%",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        title2!,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        title3! + "%",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        title4! + "đ",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget copper_tank_divided() {
    return Container(
      margin: EdgeInsets.only(left: 16,right: 16),
      // padding: EdgeInsets.only(bottom: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: Color(0xFF9E9E9E),
        ),
      ),
      child: Column(
        // mainAxisSize:MainAxisSize.max ,
        children: [
          Container(
            padding: EdgeInsets.only(top: 19, left: 8, bottom: 19, right: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                color: Color(0xFFFBF4F5)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bể",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFCF5763)),
                  ),
                  Text(
                    "Mốc doanh số tuần",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFCF5763)),
                  ),
                  Text(
                    "Mốc",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFCF5763)),
                  )
                ]),
          ),
        item(title1: "1", title2: "3,000,000", title3: "5"),
        // Divider(),
        item(title1: "1", title2: "3,000,000", title3: "5"),
        item(title1: "1", title2: "3,000,000", title3: "5"),
        item(title1: "1", title2: "3,000,000", title3: "5"),
        item(title1: "1", title2: "3,000,000", title3: "5"),
        item(title1: "1", title2: "3,000,000", title3: "5"),
        item(title1: "1", title2: "3,000,000", title3: "5"),
        item(title1: "1", title2: "3,000,000", title3: "5"),
        item(title1: "1", title2: "3,000,000", title3: "5"),
        item(title1: "1", title2: "3,000,000", title3: "5",radius2: 8,radius: 8),

       
        ],
      ),
    );
  }

  Widget item({
    required String title1,
    required String title2,
    required String title3,
    double? radius,
    double? radius2
  }) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 20, bottom: 20, right: 16),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(radius == null ? 0 : radius),bottomRight:Radius.circular(radius2 == null ? 0 : radius2) ),
        // borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        // border: Border.all(color: Colors.grey, width: 1)
        border: Border(
          top: BorderSide(color: Colors.grey, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title1), Text(title2), Text(title3 + "%")],
      ),
    );
  }
}
