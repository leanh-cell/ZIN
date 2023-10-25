import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';

class OverviewReportScreen extends StatefulWidget {
  const OverviewReportScreen({super.key});

  @override
  State<OverviewReportScreen> createState() => _OverviewReportScreenState();
}

class _OverviewReportScreenState extends State<OverviewReportScreen> {
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
        padding: EdgeInsets.only(top: 8),
        child: Column(children: [overviewReport()]),
      ),
    );
  }

  Widget overviewReport() {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("BÁO CÁO TỔNG QUAN"),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              // width: Get.width / 3.5,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0xFFD9D9D9),
                ),
              ),
              child: Row(children: [
                Text("Tháng này"),
                SizedBox(
                  width: 8,
                ),
                SvgPicture.asset("assets/icons/arrow_downward.svg")
              ]),
            ),
            Expanded(
              flex: 2,
               child: Container())
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "Số tiền đầu tư",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: Text(
                "100.000" + "đ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "Số tiền toàn hệ thống",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: Text(
                "100.000" + "đ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "Số tiền hoa hồng nhận được",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: Text(
                "100.000" + "đ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: Get.width,
          padding: EdgeInsets.only(left: 8,top: 13,bottom: 13),
          decoration: BoxDecoration(
            color: Color(0xFFFBF4F5)
          ),
          child: Text("Lịch sử mua gói",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Theme.of(context).primaryColor),),
        ),
        SizedBox(
          height: 10,
        ),
        purchaseHistory(),
        purchaseHistory(),
        purchaseHistory()
      ]),
    );
  }

  Widget purchaseHistory() {
    return Container(
      child: Column(children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "Ngày tháng",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: Text(
                "23/09/2023",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16,),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "Tên gói",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: Text(
                "AFF",
                style: TextStyle(
                    fontWeight: FontWeight.w500,),
              ),
            ),
          ],
        ),
        SizedBox(height: 16,),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "Số tiền",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: Text(
                "100.000" + "đ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    ),
                // textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        SizedBox(height: 16,),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "Hoa hồng",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: Text(
                "20" + "%",
                style: TextStyle(
                    fontWeight: FontWeight.w500,)
              ),
            ),
          ],
        ),
        Divider(color: Color(0xFFE7E7E7),),
        SizedBox(height: 8,)
      ]),
    );
  }
}
