import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/screen/setting/change_password/change_password.dart';
import 'package:zin/screen/setting/my_address/my_address_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
          padding: EdgeInsets.only(top: 8), child: setting()),
    );
  }

  Widget setting() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("CÀI ĐẶT"),
        SizedBox(height: 20,),
       
        InkWell(
          onTap: () {
            Get.off(ChangePassword());
          },
          child: Container(
            padding: EdgeInsets.only(top: 8,bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Đổi mật khẩu",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Theme.of(context).primaryColor),),
              Icon(Icons.arrow_forward_ios,size: 13,color: Theme.of(context).primaryColor)
            ]),
          ),
        ),
         Divider(),
          InkWell(
          onTap: () {
            Get.off(MyAddressScreen());
          },
          child: Container(
            padding: EdgeInsets.only(top: 8,bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Địa chỉ của tôi",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Theme.of(context).primaryColor),),
              Icon(Icons.arrow_forward_ios,size: 13,color: Theme.of(context).primaryColor)
            ]),
          ),
        ),
        Divider(),
      ]),
    );
  }
}
