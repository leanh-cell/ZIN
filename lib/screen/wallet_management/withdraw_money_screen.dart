import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/components/widget_button.dart';

class WithdrawMoneyScreen extends StatefulWidget {
  const WithdrawMoneyScreen({super.key});

  @override
  State<WithdrawMoneyScreen> createState() => _WithdrawMoneyScreenState();
}

class _WithdrawMoneyScreenState extends State<WithdrawMoneyScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFF4F4F4),
      appBar: itemappbar(key: _scaffoldKey),
      drawer: itemDrawer(),
      endDrawer: itemEndDrawer(context: context),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 8),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 21.0, top: 22, bottom: 16),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                    color: Theme.of(context).primaryColor,
                  ),
                  Text(
                    "Quay lại",
                    style: TextStyle(
                        fontSize: 16, color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 16, top: 16, right: 16),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "Số dư: ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "10,000,000" + "đ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Số tiền bạn muốn rút?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        color: Theme.of(context)
                            .primaryColor), // Màu border khi TextField không được chọn
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        color: Theme.of(context)
                            .primaryColor), // Màu border khi TextField không được chọn
                  ),
                  contentPadding: EdgeInsets.only(top:-40,left: 10,bottom:100),
                  hintText: "0đ",
                  hintStyle: TextStyle(
                    color: Color(0xFFD9D9D9),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bạn có thể rút tối đa: 5,000,000đ",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(height: 50,),
              ButtonWidget(
                radius:8,
                color: Theme.of(context).primaryColor,
                content: "Rút tiền",
                contentpadding: EdgeInsets.only(top:13,bottom:13),
                contentStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
