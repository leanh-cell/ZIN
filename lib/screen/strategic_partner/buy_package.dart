import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';

class BuyPackageScreen extends StatefulWidget {
  const BuyPackageScreen({super.key});

  @override
  State<BuyPackageScreen> createState() => _BuyPackageScreenState();
}

class _BuyPackageScreenState extends State<BuyPackageScreen> {
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
            child: Column(children: [
              Stack(
                children: [
                  Positioned(
                      top: 12,
                      child: Container(
                        width: Get.width / 2 + 30,
                        height: 1,
                        margin: EdgeInsets.only(left: 90),
                        decoration: BoxDecoration(color: Colors.grey),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 81, right: 81),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // padding: ,
                          width: 24, height: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.green),
                          child: Center(
                              child: Text(
                            "1",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        Container(
                          // padding: ,
                          width: 24, height: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.green),
                          child: Center(
                              child: Text(
                            "2",
                            style: TextStyle(color: Colors.white),
                          )),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, right: 65, bottom: 34),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Chọn gói"), Text("Chuyển tiền")],
                ),
              ),
              Container(
                width: 256,
                height: 256,
                margin: EdgeInsets.only(bottom: 34),
                decoration: BoxDecoration(color: Colors.amber),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(bottom: 34),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Tên chủ tài khoản: ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Hoang Tien Sy",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          "Số tài khoản:  ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Hoang Tien Sy",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          "Tên ngân hàng: ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Hoang Tien Sy",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          "Số tiền: ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Hoang Tien Sy",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          "Nội dung chuyển khoản: ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Hoang Tien Sy",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Lưu ý: ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600, // Áp dụng style riêng cho phần này
                            color: Theme.of(context).primaryColor, // Màu sắc
                          ),
                        ),
                        TextSpan(
                          text:
                              'Quý khách ghi nội dung mã giao dịch khi thực hiện chuyển khoản. Hệ thống sẽ tự động cập nhật số dư tài khoản trong vòng 5 đến 10 phút. Hệ thống cập nhật số dư xong sẽ gửi email thông báo cho quý khách.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                              ),
                        ),
                      ],
                    ),
                  )
                  //  Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Expanded(child: Text("Lưu ý: Quý khách ghi nội dung mã giao dịch khi thực hiện chuyển khoản. Hệ thống sẽ tự động cập nhật số dư tài khoản trong vòng 5 đến 10 phút. Hệ thống cập nhật số dư xong sẽ gửi email thông báo cho quý khách",style: TextStyle(fontSize: 16),),)
                  //   // Text("Lưu ý: ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Theme.of(context).primaryColor),),
                  //   // Expanded(child: Text("Quý khách ghi nội dung mã giao dịch khi thực hiện chuyển khoản. Hệ thống sẽ tự động cập nhật số dư tài khoản trong vòng 5 đến 10 phút. Hệ thống cập nhật số dư xong sẽ gửi email thông báo cho quý khách"))
                  // ]),
                  ),
            ]),
          ),
        ]),
      ),
    );
  }
}
