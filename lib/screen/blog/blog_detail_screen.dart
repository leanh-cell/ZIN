import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/components/appbar.dart';

class BlogDetailScreen extends StatefulWidget {
  const BlogDetailScreen({super.key});

  @override
  State<BlogDetailScreen> createState() => _BlogDetailScreenState();
}

class _BlogDetailScreenState extends State<BlogDetailScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xFFF2F2F2),
        appBar: itemappbar(key: _scaffoldKey),
        drawer: itemDrawer(),
        endDrawer: itemEndDrawer(context: context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20),
          child: blogDetail(),
        ));
  }

  Widget blogDetail() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Cracking the Coconut Code",
          style: TextStyle(fontSize: 12, color: Theme.of(context).primaryColor),
        ),
        SizedBox(
          height: 21,
        ),
        Row(
          children: [
            Text("CHIA SẺ"),
            SizedBox(
              width: 8,
            ),
            SvgPicture.asset("assets/icons/facebook2.svg"),
            SvgPicture.asset("assets/icons/pinterest.svg"),
            SvgPicture.asset("assets/icons/twitter.svg")
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "How is coconut oil manufactured?",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Coconut oil is extracted from the meat of the cocos nucifera, a specialized type of palm tree. Like all plant-derived products, there are quicker (and cheaper) and longer (with higher quality) ways of doing this. Unlike olive oil, the terms “virgin” and “extra virgin” aren’t regulated with coconut oil, so they tend to be used interchangeably.\nThe oil itself is extracted either by pressing fresh coconut meat or refining a dried version called copra. Expeller-pressed “virgin/extra virgin” coconut oil uses heat or steam to release the oil, while cold-pressed coconut oil (like the kind in Solved’s Cleansing Balm) keeps the temperature below 120F, preserving more nutrients.\nRefined coconut oil machine-presses the copra to release the oil, then “bleaches” it through clay filters to remove any bacteria or impurities.",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 34,
        ),
        relatedArticles()
      ]),
    );
  }

  Widget relatedArticles() {
    return Container(
      child: Column(children: [
        Text(
          "Bài Viết Liên Quan",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 20,),
        item(),
        item(),
        item(),
        item(),
      ]),
    );
  }

  Widget item() {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(children: [
        Container(
          width: Get.width,
          height: 204,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            color: Colors.green,
          ),
        ),
        Container(
          width: Get.width,
          // height: 204,
          padding: EdgeInsets.only(left: 8, top: 8, right: 8 ,bottom: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.only(bottomLeft:Radius.circular(8),bottomRight: Radius.circular(8)),
          ),
          child: Column(children: [
            Text(
              "Eget lobortis lorem lacinia. Vivsfsamus sd phrasem per",
              style: TextStyle(fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Xem thêm",style: TextStyle(fontSize: 12,color: Theme.of(context).primaryColor),),
                SizedBox(height: 16,),
                Icon(Icons.arrow_forward,size: 12,)
              ],
            )
          ]),
        )
      ]),
    );
  }
}
