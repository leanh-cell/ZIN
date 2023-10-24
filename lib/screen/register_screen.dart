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
      body: Container(
        // height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(top: AppBar().preferredSize.height),
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
                    child: SvgPicture.asset("assets/icons/zinlogo.svg"),
                  ),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(top: 9, left: 16, right: 16, bottom: 14),
                  // height: Get.height,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 16, top: 32, bottom: 20),
                              child: Text(
                                "Đăng ký",
                                style: TextStyle(
                                    fontFamily: "Plus Jakarta Sans",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24),
                              ),
                            )
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 16, bottom: 10),
                          child: Text(
                            "Họ tên",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Độ cong của góc
                              ),
                              hintText: 'Nhập họ tên của bạn', // Văn bản gợi ý
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, bottom: 10),
                          child: Text(
                            "Số điện thoại",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Độ cong của góc
                              ),
                              hintText:
                                  'Nhập số điện thoại của bạn', // Văn bản gợi ý
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, bottom: 10),
                          child: Text(
                            "Mật khẩu",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Độ cong của góc
                              ),
                              hintText:
                                  'Nhập mật khẩu của bạn', // Văn bản gợi ý
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, bottom: 10),
                          child: Text(
                            "Nhập lại mật khẩu",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Độ cong của góc
                              ),
                              hintText:
                                  'Nhập lại mật khẩu của bạn', // Văn bản gợi ý
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, bottom: 10),
                          child: Text(
                            "Nhập mã giới thiệu",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Độ cong của góc
                              ),
                              hintText: 'Nhập mã giới thiệu', // Văn bản gợi ý
                            ),
                          ),
                        ),

                        ButtonWidget(
                          color: Color.fromRGBO(207, 87, 99, 1),
                          content: "ĐĂNG NHẬP",
                          contentpadding: EdgeInsets.only(
                              left: 108, top: 14, right: 108, bottom: 14),
                          radius: 10,
                          padding: EdgeInsets.only(left: 16, right: 16),
                        ),

                        //  Padding(
                        //    padding: const EdgeInsets.all(3.0),
                        //    child: Text("bạn đã có tài khoản",style: TextStyle(fontSize: 10),textAlign: TextAlign.center,),
                        //  )
                      ]),
                ),
              ),
            ]),
      ),
    );
  }
}
