import 'package:flutter/material.dart';
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
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 8),
          child: historyDW(),
        ));
  }

  Widget historyDW() {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("LỊCH SỬ NẠP RÚT"),
        SizedBox(
          height: 20,
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
        // Expanded(
        //   child: TabBarView(
        //     controller: _tabController,
        //     children: [
        //     Center(child: Text('da6ata'),)
        //   ]),
        // )
      ]),
    );
  }
}
