import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/widget_button.dart';
import 'package:zin/screen/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    color: Colors.amber,
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
                      const EdgeInsets.only(top: 9, left: 16, right: 16, bottom: 14),
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
                              padding:
                                  EdgeInsets.only(left: 16, top: 32, bottom: 30),
                              child: Text(
                                "Đăng nhập",
                                style: TextStyle(
                                    fontFamily: "Plus Jakarta Sans",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, bottom: 38),
                          child: Row(
                            children: [
                              InkWell(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 41, top: 17, right: 41, bottom: 17),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                      color: Color.fromARGB(255, 253, 247, 247)),
                                  child: Center(
                                    child: Row(children: [
                                      SvgPicture.asset("assets/icons/google.svg"),
                                      Text("  Tiếp tục với Google")
                                    ]),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              InkWell(
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                      color: Color.fromARGB(255, 246, 246, 246)),
                                  // height: 54,
                                  child: Center(
                                    child: SvgPicture.asset(
                                        "assets/icons/facebook.svg"),
                                  ),
                                ),
                              ),
                            ],
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
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Độ cong của góc
                              ),
                              hintText: 'Nhập mật khẩu của bạn', // Văn bản gợi ý
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8, right: 16.0),
                              child: InkWell(
                                child: Text(
                                  "Quên mật khẩu?",
                                  style: TextStyle(
                                      color: Color.fromRGBO(207, 87, 99, 1)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ButtonWidget(
                          color: Color.fromRGBO(207, 87, 99, 1),
                          content: "ĐĂNG NHẬP",
                          contentpadding: EdgeInsets.only(
                              left: 108, top: 14, right: 108, bottom: 14),
                          radius: 10,
                          padding: EdgeInsets.only(left: 16, right: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Bạn chưa có tài khoản? ",
                              style: TextStyle(fontSize: 12),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(RegisterScreen());
                              },
                              child: Text(
                                "Đăng ký",
                                style: TextStyle(
                                  // decoration: TextDecoration.underline,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(207, 87, 99, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 50,),
                        Padding(
                          padding: const EdgeInsets.only(left:18 , right: 18),
                          child: Text("Việc bạn tiếp tục sủ dụng trang web này đồng nghĩa bạn đồng ý với điều khoản sử dụng của chúng tôi ",maxLines: 2,style: TextStyle(fontSize: 10),textAlign: TextAlign.center,),
                        ),
                      ]),
                ),
              )
            ]),
      ),
    );
  }
}
