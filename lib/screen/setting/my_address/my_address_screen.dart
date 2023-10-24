import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/screen/setting/my_address/add_new_address.dart';

class MyAddressScreen extends StatefulWidget {
  const MyAddressScreen({super.key});

  @override
  State<MyAddressScreen> createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
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
          padding: EdgeInsets.only(top: 10),
          child: myAddress(),
        ));
  }

  Widget myAddress() {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
      color: Colors.white,
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Text("ĐỊA CHỈ CỦA TÔI"),
            ),
            InkWell(
              onTap: () {
                Get.to(AddnewAddressScreen());
              },
              child: Container(
                padding: EdgeInsets.only(left: 7, top: 12, bottom: 12, right: 7),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 15,
                      color: Colors.white,
                    ),
                    Text(
                      "Thêm địa chỉ mới",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        itemAddress(
            name: "Phương Anh",
            phone: "0989117832",
            address: "Bình Lăng, Tiền Phong, Ân Thi, Hưng Yên",
            defaultAdress: 0),
             itemAddress(
            name: "Phương Anh",
            phone: "0989117832",
            address: "Bình Lăng, Tiền Phong, Ân Thi, Hưng Yên",
            defaultAdress: 1), itemAddress(
            name: "Phương Anh",
            phone: "0989117832",
            address: "Bình Lăng, Tiền Phong, Ân Thi, Hưng Yên",
            defaultAdress: 1), itemAddress(
            name: "Phương Anh",
            phone: "0989117832",
            address: "Bình Lăng, Tiền Phong, Ân Thi, Hưng Yên",
            defaultAdress: 1),
      ]),
    );
  }

  Widget itemAddress(
      {required String name,
      required String phone,
      required String address,
      required int defaultAdress}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 12),
                  ),
                  Container(
                    width: 1,
                    height: 20,
                    margin: EdgeInsets.only(left: 8, right: 8),
                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                  ),
                  Text(
                    phone,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            InkWell(
              child: Text(
                "Cập nhật",
                style: TextStyle(color: Color(0xFF2F80ED), fontSize: 12),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            InkWell(
              child: Text(
                "Xoá",
                style: TextStyle(color: Color(0xFFEB5757), fontSize: 12),
              ),
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          address,
          style: TextStyle(fontSize: 12),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        defaultAdress == 0
            ? Container(
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.only(left: 8,top: 6,right: 8,bottom: 6),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFEB5757),
                  ),
                ),
                child: Text("Mặc Định",style: TextStyle(color: Color(0xFFEB5757),fontSize: 12),),
              )
            : Container(),
            SizedBox(height: 10,),
            Divider(color: Color(0xFFE7E7E7),)
      ]),
    );
  }
}
