import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zin/components/widget_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(207, 87, 99, 1),
      body: SingleChildScrollView(
        // height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: AppBar().preferredSize.height),
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 127,
                    height: 109,
                    // color: Colors.amber,
                    child: Image.asset("assets/images/zinlogo.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 9, left: 16, right: 16, bottom: 14),
                padding: EdgeInsets.only(left: 16, right: 16),
                // height: Get.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        "Đăng ký",
                        style: TextStyle(
                            fontFamily: "Plus Jakarta Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 24),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Họ tên",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(10.0), // Độ cong của góc
                          ),
                          hintText: 'Nhập họ tên của bạn', // Văn bản gợi ý
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Số điện thoại",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(10.0), // Độ cong của góc
                          ),
                          hintText:
                              'Nhập số điện thoại của bạn', // Văn bản gợi ý
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Mật khẩu",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(10.0), // Độ cong của góc
                          ),
                          hintText: 'Nhập mật khẩu của bạn', // Văn bản gợi ý
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Nhập lại mật khẩu",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(10.0), // Độ cong của góc
                          ),
                          hintText:
                              'Nhập lại mật khẩu của bạn', // Văn bản gợi ý
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Nhập mã giới thiệu",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(10.0), // Độ cong của góc
                          ),
                          hintText: 'Nhập mã giới thiệu', // Văn bản gợi ý
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ButtonWidget(
                        color: Color.fromRGBO(207, 87, 99, 1),
                        content: "ĐĂNG KÝ",
                        contentpadding: EdgeInsets.only(
                            left: 108, top: 14, right: 108, bottom: 14),
                        radius: 10,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ]),
              ),
            ]),
      ),
    );
  }
}
