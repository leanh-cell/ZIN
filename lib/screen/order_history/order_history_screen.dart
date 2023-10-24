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
      body: SingleChildScrollView(
        child: orderHistory(),
      ),
    );
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
      //  tabBarItem()
        //   Expanded(
        //     child:
        // TabBarView(
        //       controller: _tabController,
        //       children: [
        //         Expanded(
        //           child: Container(
        //             width: 200,
        //             height: 100,
        //             color: Colors.amber,
        //           ),
        //         ),
        //       Container(
        //           width: 200,
        //           height: 100,
        //           color: Colors.amber,
        //         ),
        //       Container(
        //           width: 200,
        //           height: 100,
        //           color: Colors.amber,
        //         ),
        //       Container(
        //           width: 200,
        //           height: 100,
        //           color: Colors.amber,
        //         ),
        //       ],
        //     ),
        //   ),
      ]),
    );
  }

  Widget tabBarItem() {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(children: [
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
            Expanded(
          // flex: 2,
          child: TabBarView(
            controller: _tabController,
            children: [
              Center(child: Text('Màn hình 1')),
            Center(child: Text('Màn hình 2')),
            Center(child: Text('Màn hình 3')),
             Center(child: Text('Màn hình 4')),
            // Center(child: Text('Màn hình 5')),
            // Center(child: Text('Màn hình 6')),
          ],),
        )
          ]),
    );
  }
}
