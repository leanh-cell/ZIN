import 'package:flutter/material.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/components/widget_button.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
          child: changePassword(),
        ));
  }

  Widget changePassword() {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("THAY ĐỔI MẬT KHẨU"),
        SizedBox(
          height: 20,
        ),
        Text(
          "Mật khẩu cũ",
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
                borderSide: BorderSide(color: Color(0xFFC4C4C4)),
                borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
              ),
              hintText: 'Nhập mật khẩu cũ',
              hintStyle: TextStyle(color: Color(0xFFC4C4C4)) // Văn bản gợi ý
              ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Mật khẩu mới",
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
                borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
              ),
              hintText: 'Nhập mật khẩu mới', // Văn bản gợi ý
              hintStyle: TextStyle(color: Color(0xFFC4C4C4))),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Nhập lại mật khẩu mới",
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
                borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
              ),
              hintText: 'Nhập lại mật khẩu mới', // Văn bản gợi ý
              hintStyle: TextStyle(color: Color(0xFFC4C4C4))),
        ),
        SizedBox(
          height: 30,
        ),
        ButtonWidget(
          radius: 8,
          contentpadding: EdgeInsets.only(top: 8,bottom: 8),
          color: Theme.of(context).primaryColor,
          content: "LƯU",
          contentStyle: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        )
      ]),
    );
  }
}
