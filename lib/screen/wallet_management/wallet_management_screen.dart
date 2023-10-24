import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/screen/wallet_management/withdraw_money_screen.dart';

class WalletManagementScreen extends StatefulWidget {
  const WalletManagementScreen({super.key});

  @override
  State<WalletManagementScreen> createState() => _WalletManagementScreenState();
}

class _WalletManagementScreenState extends State<WalletManagementScreen>
    with TickerProviderStateMixin {
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
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 8),
          child: WalletManagement(),
        ));
  }

  Widget WalletManagement() {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("QUẢN LÝ VÍ"),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 25, right: 20, bottom: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/wallet.svg"),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ví hoa hồng",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "30.000" + "đ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(WithdrawMoneyScreen());
                },
                child: Container(
                  padding:
                      EdgeInsets.only(left: 10, top: 6, bottom: 6, right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(children: [
                    SvgPicture.asset("assets/icons/withdraw_money.svg"),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Rút tiền",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 12, right: 20, bottom: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/wallet.svg"),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ví cổ đông",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "30.000" + "đ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, top: 6, bottom: 6, right: 10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        // border:
                        //     Border.all(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(children: [
                      SvgPicture.asset(
                        "assets/icons/withdraw_money.svg",
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Nạp tiền",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, top: 6, bottom: 6, right: 10),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(children: [
                      SvgPicture.asset("assets/icons/withdraw_money.svg"),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Rút tiền",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor),
                      )
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 25, right: 20, bottom: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/money.svg",
                      width: 26.88,
                      height: 26.88,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mana",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "30.000" + "đ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SvgPicture.asset("assets/icons/suggest.svg")
            ],
          ),
        ),
        Row(
          children: [
            TabBar(
              isScrollable: true,
              controller: _tabController,
              tabs: _tabs,
              labelColor: Theme.of(context).primaryColor,
              indicatorColor: Theme.of(context).primaryColor,
              unselectedLabelColor: _unselectedColor,
            ),
          ],
        ),
      ]),
    );
  }
}
