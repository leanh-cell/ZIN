import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/components/string_ultil.dart';
import 'package:zin/components/widget_button.dart';
import 'package:zin/screen/home/home_screen.dart';
import 'package:zin/screen/strategic_partner/buy_package.dart';

class BecomeAStrategicPartnerr extends StatefulWidget {
  const BecomeAStrategicPartnerr({super.key});

  @override
  State<BecomeAStrategicPartnerr> createState() => _BecomeAStrategicPartnerrState();
}

class _BecomeAStrategicPartnerrState extends State<BecomeAStrategicPartnerr> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFFFFFFF),
     appBar: itemappbar(key: _scaffoldKey),
      drawer: itemDrawer(),
      endDrawer: itemEndDrawer(context: context),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 34,),
          Center(child: Text("Cổ đông",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),),
          Padding(
            padding: const EdgeInsets.only(left:16,right: 16,bottom: 20),
            child: Text("Quyền lợi của cổ đông góp vốn tính theo tháng (Mùng 1 tháng này đến mùng 1 tháng sau)-Ngày 5 được rút",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
          ),
          item(
          title: "Gói cổ đông 1",
          title1: "1000000",
          title2: "1,200,000",
          title3: "0",
          ),
        item(
          title: "Gói cổ đông 2",
          title1: "1000000",
          title2: "1,200,000",
          title3: "0",
          ),
        item(
          title: "Gói cổ đông 3",
          title1: "1000000",
          title2: "1,200,000",
          title3: "0",
          ),
        item(
          title: "Gói cổ đông 4",
          title1: "1000000",
          title2: "1,200,000",
          title3: "0",
          ),
        item(
          title: "Gói cổ đông 5",
          title1: "1000000",
          title2: "1,200,000",
          title3: "0",
          ),
        item(
          title: "Gói cổ đông 6",
          title1: "1000000",
          title2: "1,200,000",
          title3: "0",
          ),
        item(
          title: "Gói cổ đông 7",
          title1: "1000000",
          title2: "1,200,000",
          title3: "0",
          ),
        item(
          title: "Gói cổ đông 8",
          title1: "1000000",
          title2: "1,200,000",
          title3: "0",
          ),
        item(
          title: "Gói cổ đông 9",
          title1: "1000000",
          title2: "1,200,000",
          title3: "0",
          ),
        item(
          title: "Gói cổ đông 10",
          title1: "1000000",
          title2: "1,200,000",
          title3: "0",
          ),
          SizedBox(height: 10,),

          Padding(
               padding: const EdgeInsets.only(top: 8,left:16,right: 16),
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("- ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                         Flexible(child: Text("Chia 20% doanh thu theo tỉ lệ góp vốn/ tổng số vốn góp.",style: TextStyle(fontWeight: FontWeight.w600),))
                       ],
                     ),
             ),
             SizedBox(height: 100,)
        ]),
      )
    );
  }

  Widget item({
    required String? title,
    required String? title1,
    required String? title2,
    required String? title3,
  }){
    return Container(
      margin: EdgeInsets.only(left: 16,right: 16),
      child: Column(children: [
        InkWell(
          onTap:() {
            Get.to(BuyPackageScreen());
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.only(left: 8,top: 13,bottom: 13,right: 8),
            decoration: BoxDecoration(color: Color(0xFFFBF4F5)),
            child: Row(children: [
              Text(title!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFFCF5763)),),
              Spacer(),
              ButtonWidget(
                radius: 8,
                color: Color(0xFFCF5763),
                content: "Mua gói",
                contentStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              )
            ],),
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
                        "Đầu tư",
                        style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Mức chia tối đa (Mana)",
                        style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Hệ số thưởng Mana bán hàng",
                        style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
                      ),
                      SizedBox(
                        height: 16,
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
                        SahaStringUtils().convertToMoney(title1),
                        // title1! ,
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
                        title3!,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ]),
    );
  }
}