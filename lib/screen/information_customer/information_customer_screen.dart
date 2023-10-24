import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/components/widget_button.dart';

class InformationCustomerScreen extends StatefulWidget {
  const InformationCustomerScreen({super.key});

  @override
  State<InformationCustomerScreen> createState() =>
      _InformationCustomerScreenState();
}

class _InformationCustomerScreenState extends State<InformationCustomerScreen> {
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          formInfor(),
          SizedBox(
            height: 8,
          ),
          billingInformation(),
         
        ]),
      ),
    );
  }

  Widget formInfor() {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 16, right: 16),
      color: Colors.white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "THÔNG TIN CƠ BẢN",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        height: 77,
                        width: 77,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/icons/uploadimg.svg"),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Ảnh đại diện",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFF486284)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 28,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Người giới thiệu",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Trần Thị Phương Anh",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Link giới thiệu",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "http://aff.page.link/Huynadhdjha____hdhdhdhd",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFFCF5763),
                                  fontWeight: FontWeight.w500),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SvgPicture.asset("assets/icons/share2.svg")
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "Họ tên",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFE7E7E7)),
                  borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
                ),
                hintText: 'Nhập họ tên của bạn', // Văn bản gợi ý
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Số điện thoại",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFE7E7E7)),
                  borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
                ),
                hintText: 'Nhập họ tên của bạn', // Văn bản gợi ý
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFE7E7E7)),
                  borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
                ),
                hintText: 'Nhập họ tên của bạn', // Văn bản gợi ý
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Ngày sinh",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFE7E7E7)),
                  borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
                ),
                hintText: 'Nhập họ tên của bạn', // Văn bản gợi ý
                suffixIcon: Container(
                  padding: EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    "assets/icons/calendar.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Giới tính",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Radio<int>(
                        value: 0,
                        groupValue: 0,
                        onChanged: (value) {
                          setState(() {
                            // selectedValue = value;
                          });
                        },
                        visualDensity: VisualDensity(
                          horizontal:
                              -2, // Điều chỉnh kích thước ngang của nút radio
                          vertical:
                              -2, // Điều chỉnh kích thước dọc của nút radio
                        ),
                      ),
                      Text("Nam"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Radio<int>(
                        value: 0,
                        groupValue: 0,
                        onChanged: (value) {
                          setState(() {
                            // selectedValue = value;
                          });
                        },
                        visualDensity: VisualDensity(
                          horizontal:
                              -2, // Điều chỉnh kích thước ngang của nút radio
                          vertical:
                              -2, // Điều chỉnh kích thước dọc của nút radio
                        ),
                      ),
                      Text("Nữ"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Radio<int>(
                        value: 1,
                        groupValue: 0,
                        onChanged: (value) {
                          setState(() {
                            // selectedValue = value;
                          });
                        },
                        visualDensity: VisualDensity(
                          horizontal:
                              -2, // Điều chỉnh kích thước ngang của nút radio
                          vertical:
                              -2, // Điều chỉnh kích thước dọc của nút radio
                        ),
                      ),
                      Text("Khác"),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ButtonWidget(
              contentpadding: EdgeInsets.only(top: 8, bottom: 8),
              radius: 8,
              color: Theme.of(context).primaryColor,
              content: "LƯU",
              contentStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )
          ]),
    );
  }

  Widget billingInformation() {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("THÔNG TIN THANH TOÁN"),
        SizedBox(
          height: 20,
        ),
        Text(
          "Tên chủ tài khoản",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE7E7E7)),
              borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
            ),
            hintText: 'Nhập họ tên của bạn', // Văn bản gợi ý
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Số tài khoản",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE7E7E7)),
              borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
            ),
            hintText: 'Nhập họ tên của bạn', // Văn bản gợi ý
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Tên ngân hàng",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE7E7E7)),
              borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
            ),
            hintText: 'Nhập họ tên của bạn', // Văn bản gợi ý
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Chi nhánh",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE7E7E7)),
              borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
            ),
            hintText: 'Nhập họ tên của bạn', // Văn bản gợi ý
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Ảnh CMND/CCCD",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Mặt trước",
          style: TextStyle(),
        ),
        SizedBox(
          height: 8,
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.only(top: 46, bottom: 46),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFD9D9D9)),
            child: Center(child: SvgPicture.asset("assets/icons/camera.svg")),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Mặt sau",
          style: TextStyle(),
        ),
        SizedBox(
          height: 8,
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.only(top: 46, bottom: 46),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFD9D9D9)),
            child: Center(child: SvgPicture.asset("assets/icons/camera.svg")),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ButtonWidget(
          radius: 8,
          color: Theme.of(context).primaryColor,
          content: "LƯU",
          contentStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),
        ),
         SizedBox(height: 47,)
      ]),
    );
  }
}
