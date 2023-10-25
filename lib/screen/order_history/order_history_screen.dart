import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/screen/order_history/test.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late TabController _tabController;

  // final _selectedColor = Theme.of(context).p;
  final _unselectedColor = Color(0xff5f6368);
  final _tabs = [
    Tab(text: 'Tất cả(13)'),
    Tab(text: 'Chờ thanh toán'),
    Tab(text: 'Vận chuyển(4)'),
    Tab(text: 'Đang giao'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xFFF5F5F5),
        appBar: itemappbar(key: _scaffoldKey),
        drawer: itemDrawer(),
        endDrawer: itemEndDrawer(context: context),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: orderHistory(),
        ));
  }

  Widget orderHistory() {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("LỊCH SỬ ĐƠN HÀNG"),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Get.to(HomePage());
          },
          child: Container(
            width: Get.width / 3.5,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Color(0xFFD9D9D9),
              ),
            ),
            child: Row(children: [
              Text("Của tôi"),
              SizedBox(
                width: 8,
              ),
              SvgPicture.asset("assets/icons/arrow_downward.svg")
            ]),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Expanded(
          child: Container(
            child: ListView(physics: NeverScrollableScrollPhysics(), children: [
              TabBar(
                isScrollable: true,
                controller: _tabController,
                tabs: _tabs,
                labelColor: Theme.of(context).primaryColor,
                indicatorColor: Theme.of(context).primaryColor,
                unselectedLabelColor: _unselectedColor,
              ),
            ]),
          ),
        ),
        SizedBox(height: 17,),
        Expanded(
          flex: 9,
          child: TabBarView(
            controller: _tabController,
            children: [
              pageProductAll(),
              Center(child: Text('Màn hình 2')),
              Center(child: Text('Màn hình 3')),
              Center(child: Text('Màn hình 4')),
              // Center(child: Text('Màn hình 5')),
              // Center(child: Text('Màn hình 6')),
            ],
          ),
        )
      ]),
    );
  }

  Widget pageProductAll() {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Độ cong của góc
                  ),
                  prefixIcon: Container(
                      width: 12,
                      height: 12,
                      padding: EdgeInsets.all(13),
                      child: SvgPicture.asset(
                        "assets/icons/search.svg",
                        color: Colors.grey,
                        width: 12,
                        height: 12,
                        fit: BoxFit.cover,
                      )),
                  hintText: 'Tìm kiếm tên đơn hàng, mã đơn hàng,...',
                  hintStyle:
                      TextStyle(color: Color(0xFF909090)) // Văn bản gợi ý
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  itemProductSuccess(),
                  itemProductSuccess(),
                  itemProductSuccess(),
                  itemProductSuccess()
                ]),
              ),
            ),
          ]),
    );
  }

  Widget itemProductSuccess() {
    return Container(
      child: Column(children: [
        Row(
          children: [
            Container(
              width: 77,
              height: 77,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFCF5763)),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "[NEW 26-30]",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "[WINERY EDITION]",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Expanded(
                        child: Text(
                          "Sonnncncncnccnc",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "1.899.000" + "đ",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "Số lượng: " + "2",
                        style: TextStyle(fontSize: 12),
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Đơn hàng đã được giao thành công",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 17,
                        margin: EdgeInsets.only(left: 8, right: 8),
                        color: Colors.grey,
                      ),
                      Expanded(
                          child: Text(
                        "HOÀN THÀNH",
                        style: TextStyle(
                            fontSize: 10,
                            color: Theme.of(context).primaryColor),
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Text(
              "Thành tiền: ",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              "1.899.000" + "đ",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColor),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(left: 17, top: 6, right: 17, bottom: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).primaryColor),
              child: Text(
                "Đánh giá",
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 17, top: 6, right: 17, bottom: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Theme.of(context).primaryColor),
              ),
              child: Text(
                "Mua lại",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor),
              ),
            ),
          ],
        ),
        Divider(
          height: 40,
        )
      ]),
    );
  }
}
