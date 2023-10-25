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
    Tab(
      child: Text(
        "Danh sách ví",
        style: TextStyle(fontSize: 16),
      ),
    ),
    Tab(
      child: Text(
        "Ví hoa hồng",
        style: TextStyle(fontSize: 16),
      ),
    ),
    Tab(
      child: Text(
        "Ví cổ đông",
        style: TextStyle(fontSize: 16),
      ),
    ),
    Tab(
      child: Text(
        "Mana",
        style: TextStyle(fontSize: 16),
      ),
    )
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
          padding: EdgeInsets.only(top: 8),
          child: WalletManagement(),
        ));
  }

  Widget WalletManagement() {
    return Container(
      // padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
       Expanded(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children:[ TabBar(
              isScrollable: true,
              controller: _tabController,
              tabs: _tabs,
              labelColor: Theme.of(context).primaryColor,
              indicatorColor: Theme.of(context).primaryColor,
              unselectedLabelColor: _unselectedColor,
            ),]
          ),
        ),
        Expanded(
          flex: 9,
          child: TabBarView(
            controller: _tabController,
            children: [
              walletList(),
              pageRose(),
              pageRose(),
              pageRose(),
            ],
          ),
        )
      ]),
    );
  }

Widget walletList(){
  return Container(
    padding: EdgeInsets.only(left: 16, right: 16),
    child: Column(children: [
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
        
    ]),
  );
}

  Widget pageRose() {
    return Container(
      // margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(children: [
          Row(
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
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
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
              SizedBox(
                width: 12,
              ),
              Expanded(
                // flex: 2,
                child: Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xFFD9D9D9))),
                  child: Row(children: [
                    Expanded(child: Text("Nguồn giao dịch")),
                    SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: SvgPicture.asset(
                            "assets/icons/arrow_downward.svg"),
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          itemHistoryMaGD(),
          itemHistoryTSGD(status: 1),
          itemHistoryTSGD(status: 0)
        ]),
      ),
    );
  }

  Widget itemHistoryMaGD() {
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
                    "Mã GD: ",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text("GHSGIAB")
                ],
              )),
              Text(
                "+" + "500.000",
                style: TextStyle(color: Colors.green),
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
                    "Mã liên kết: ",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text("SJGIAON")
                ],
              )),
              Row(
                children: [
                  Text(
                    "Số dư: ",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text("5.500.000" + "đ"),
                ],
              )
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

  Widget itemHistoryTSGD({required int status}) {
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
                    "Trước GD: ",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "3.000.000" + "đ",
                  )
                ],
              )),
              status == 1
                  ? Text(
                      "+" + "500.000",
                      style: TextStyle(color: Colors.green),
                    )
                  : Text(
                      "-" + "500.000",
                      style: TextStyle(color: Colors.red),
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
                    "Sau GD: ",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text("3.500.000" + "đ")
                ],
              )),
              Row(
                children: [
                  Text(
                    "08:29 - 24/12/2023",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF697A8D),
                    ),
                  ),
                  // Text("5.500.000" + "đ"),
                ],
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Từ bán hàng",
            style: TextStyle(
              fontSize: 10,
              // color: Color(0xFF697A8D),
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
