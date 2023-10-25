import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/components/widget_button.dart';
import 'package:zin/screen/blog/blog_detail_screen.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;

  // final _selectedColor = Theme.of(context).p;
  final _unselectedColor = Color(0xff5f6368);
  final _tabs = [
    Tab(
      child: Container(
        // color: Colors.white,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Text("Tất cả"),
      ),
    ),
    Tab(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Text("Phổ biến"),
      ),
    ),
    Tab(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Text("Mới nhất"),
      ),
    ),
    // Tab(text: 'Đang giao'),
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
        backgroundColor: Color(0xFFF2F2F2),
        appBar: itemappbar(key: _scaffoldKey),
        drawer: itemDrawer(),
        endDrawer: itemEndDrawer(context: context),
        body: BlogPage());
  }

  Widget BlogPage() {
    return Container(
      child: Column(children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            color: Color(0xFFF9D0DA),
            child:
                // TabBar(
                //   isScrollable: false,
                //   controller: _tabController,
                //   tabs: _tabs,
                //   labelColor: Theme.of(context).primaryColor,
                //   indicatorColor: Theme.of(context).primaryColor,
                //   unselectedLabelColor: _unselectedColor,
                // ),
                TabBar(
              // unselectedLabelStyle: TextStyle(
              //   backgroundColor: Colors.white,
              // ),
              isScrollable: false,
              controller: _tabController,
              tabs: _tabs,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(80.0),
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 9,
          child: TabBarView(
            controller: _tabController,
            children: [
              allBlogPage(),
              allBlogPage(),
              allBlogPage(),
              // Center(child: Text('Màn hình 4')),
              // Center(child: Text('Màn hình 5')),
              // Center(child: Text('Màn hình 6')),
            ],
          ),
        )
      ]),
    );
  }

  Widget allBlogPage() {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        child: Column(children: [
          itemBlog(),
          itemBlog(),
          itemBlog(),
          itemBlog(),
          itemBlog(),
          itemBlog(),
          itemBlog(),
          itemBlog(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Xem thêm",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SvgPicture.asset("assets/icons/see_more.svg")
            ],
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 60,
          ),
        ]),
      ),
    );
  }

  Widget itemBlog() {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: Get.width,
          height: 218,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.amber,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text("21/12/2023"),
        SizedBox(
          height: 10,
        ),
        Text(
          "Cracking the Coconut Code",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Few ingredients have been debated as much in recent years as coconut oil. Is it or is it not the “miracle product” so many claim it to be? We answer: Like anything, it depends. One of our newest brands, Solved Skincare, puts coconut oil front and center, so we wanted to give you the facts to decide how your specific skin type can reap its rewards.",
          style: TextStyle(),
          maxLines: 8,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              tags(name: "HELLO"),
              tags(name: "HELLO"),
              tags(name: "HELLO"),
              // tags(name: "HELLO"),
              // tags(name: "HELLO"),
              // tags(name: "HELLO"),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 48.5, right: 48.5),
          child: ButtonWidget(
            onPressed: () {
              Get.to(BlogDetailScreen());
            },
            radius: 4,
            colorBorder: Colors.black,
            contentpadding: EdgeInsets.only(top: 10, bottom: 10),
            content: "Xem thêm",
            contentStyle: TextStyle(fontWeight: FontWeight.w500),
          ),
        )
      ]),
    );
  }

  Widget tags({required String name}) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 227, 226, 228)),
      child: Text("# " + name),
    );
  }
}
