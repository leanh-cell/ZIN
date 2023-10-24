import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/components/widget_button.dart';

class AddnewAddressScreen extends StatefulWidget {
  const AddnewAddressScreen({super.key});

  @override
  State<AddnewAddressScreen> createState() => _AddnewAddressScreenState();
}

class _AddnewAddressScreenState extends State<AddnewAddressScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xFFF5F5F5),
        // appBar: itemappbar(key: _scaffoldKey),
        // drawer: itemDrawer(),
        // endDrawer: itemEndDrawer(context: context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
              top: AppBar().preferredSize.height, left: 16, right: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  "THÊM ĐỊA CHỈ MỚI",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                )),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset("assets/icons/cancel.svg"))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Họ tên",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Độ cong của góc
                  ),
                  hintText: 'Nhập họ tên', // Văn bản gợi ý
                  hintStyle: TextStyle(color: Color(0xFFC4C4C4))),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Số điện thoại",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Độ cong của góc
                  ),
                  hintText: 'Nhập số điện thoại', // Văn bản gợi ý
                  hintStyle: TextStyle(color: Color(0xFFC4C4C4))),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Thành phố/Tỉnh",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Độ cong của góc
                  ),
                  hintText: 'Chọn thành phố/tỉnh', // Văn bản gợi ý
                  hintStyle: TextStyle(color: Color(0xFFC4C4C4)),
                  suffixIcon: Icon(Icons.arrow_drop_down)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Quận/Huyện",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Độ cong của góc
                  ),
                  hintText: 'Chọn quận/huyện', // Văn bản gợi ý
                  hintStyle: TextStyle(color: Color(0xFFC4C4C4)),
                  suffixIcon: Icon(Icons.arrow_drop_down)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Phường/Xã",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Độ cong của góc
                  ),
                  hintText: 'Chọn phường/xã', // Văn bản gợi ý
                  hintStyle: TextStyle(color: Color(0xFFC4C4C4)),
                  suffixIcon: Icon(Icons.arrow_drop_down)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Địa chỉ chi tiết",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Độ cong của góc
                  ),
                  hintText: 'Nhập địa chỉ chi tiết', // Văn bản gợi ý
                  hintStyle: TextStyle(color: Color(0xFFC4C4C4))),
            ),
            SizedBox(height: 20,),
            ButtonWidget(
              radius: 8,
              contentpadding: EdgeInsets.only(top: 8,bottom: 8),
              color: Theme.of(context).primaryColor,
              content: "Lưu địa chỉ",
              contentStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),
            )
          ]),
        ));
  }
}
