import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zin/components/appbar.dart';

class DepositAndWithdrawalHistory extends StatefulWidget {
  const DepositAndWithdrawalHistory({super.key});

  @override
  State<DepositAndWithdrawalHistory> createState() =>
      _DepositAndWithdrawalHistoryState();
}

class _DepositAndWithdrawalHistoryState
    extends State<DepositAndWithdrawalHistory> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;

  // final _selectedColor = Theme.of(context).p;
  final _unselectedColor = Color(0xff5f6368);
  final _tabs = [
    Tab(text: 'Ví hoa hồng'),
    Tab(text: 'Ví cổ đông'),
    Tab(text: 'Mana'),
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
          child: historyDW(),
        ));
  }

  Widget historyDW() {
    return Container(
      // padding: EdgeInsets.only(left: 16, top: 16, right: 16),
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
         padding: EdgeInsets.only(left: 16, top: 16, right: 16),
          child: Text("LỊCH SỬ NẠP RÚT"),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView(physics: NeverScrollableScrollPhysics(), children: [
            TabBar(
              isScrollable: false,
              controller: _tabController,
              tabs: _tabs,
              labelColor: Theme.of(context).primaryColor,
              indicatorColor: Theme.of(context).primaryColor,
              unselectedLabelColor: _unselectedColor,
            ),
          ]),
        ),
        Expanded(
          flex: 9,
          child: TabBarView(
            controller: _tabController,
            children: [
              itemHistory(),
             itemHistory(),
             itemHistory(),
            ],
          ),
        )
      ]),
    );
  }

  Widget itemHistory() {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    "Hiển thị",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFF2F2F2)),
                    child: Row(children: [
                      Text("20"),
                      SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset("assets/icons/arrow_downward.svg")
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 23, top: 10, bottom: 10, right: 23),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFFD9D9D9))),
              child: Row(children: [
                Text("Tuần này"),
                SizedBox(
                  width: 8,
                ),
                SizedBox(
                    width: 24,
                    height: 24,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child:
                          SvgPicture.asset("assets/icons/arrow_downward.svg"),
                    ))
              ]),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              // flex: 2,
              child: Container(
                padding:
                    EdgeInsets.only(left: 23, top: 10, bottom: 10,right: 18),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xFFD9D9D9))),
                child: Row(children: [
                  Expanded(child: Text("Nguồn giao dịch")),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child:
                          SvgPicture.asset("assets/icons/arrow_downward.svg"),
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              width: 57,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 23, top: 10, bottom: 10, right: 23),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFFD9D9D9))),
              child: Row(children: [
                Text("Trạng thái"),
                SizedBox(
                  width: 8,
                ),
                SizedBox(
                    width: 24,
                    height: 24,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child:
                          SvgPicture.asset("assets/icons/arrow_downward.svg"),
                    ))
              ]),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: [
              itemHistoryWithdrawaMoney(status: 0),
              itemHistoryWithdrawaMoney(status: 1),
              itemHistoryWithdrawaMoney(status: 2),
              itemHistoryWithdrawaMoney(status: 1),
              itemHistoryWithdrawaMoney(status: 1),
              itemHistoryWithdrawaMoney(status: 1),
              itemHistoryWithdrawaMoney(status: 1),
              itemHistoryWithdrawaMoney(status: 1),
              itemHistoryWithdrawaMoney(status: 1),
              itemHistoryWithdrawaMoney(status: 1),
              itemHistoryWithdrawaMoney(status: 1),
              itemHistoryWithdrawaMoney(status: 1),
              ]),
          ),
        )
      ]),
    );
  }

  Widget itemHistoryWithdrawaMoney({required int status}) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Text(
                    "Mã đơn: ",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text("KHAOHPDHU")
                ],
              )),
              Text(
                "500.000",
                style: TextStyle(),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Text(
                    "Loại: ",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text("KHAOHPDHU")
                ],
              )),
            status == 0 ?
              Container(
                padding: EdgeInsets.only(left: 13.5,top: 3.5,bottom: 3.5,right: 13.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.green),
                  color: Colors.green.withOpacity(0.3)),
                  child: Text("Đã duyệt",style: TextStyle(color: Colors.green),),
              ):Container(),
              status == 1 ?
              Container(
                padding: EdgeInsets.only(left: 13.5,top: 3.5,bottom: 3.5,right: 13.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFFF2C94C)),
                  color: Color(0xFFFefaed)),
                  child: Text("Chờ duyệt",style: TextStyle(color: Color(0xFFF2C94C)),),
              ):Container(),
              status == 2 ?
              Container(
                padding: EdgeInsets.only(left: 27,top: 3.5,bottom: 3.5,right: 27),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFFEB5757)),
                  color: Color(0xFFFDEEEE)),
                  child: Text("Hủy",style: TextStyle(color: Colors.red),),
              ):Container()
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "08:29 - 24/12/2023",
            style: TextStyle(
              fontSize: 10,
              color: Color(0xFF697A8D),
            ),
          ),
          Divider(
            height: 30,
          )
        ],
      ),
    );
  }
}
