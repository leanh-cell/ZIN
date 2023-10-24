import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zin/components/appbar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 16, top: 22, right: 16, bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "THÔNG BÁO",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text("Đánh dấu tất cả là đã đọc")
                ],
              ),
            ),
            itemNotification(
              title: "Đơn hàng đang vận chuyển",
              content: "Đơn hàng 348592HFJADK với mã vận đơn HGPAKRHNSK đã được giao cho đơn vị vận chuyển qua phương thức vận chuyển Nhanh ",
              time: "03:24 09/03/2023"
            ),
            itemNotification(
              title: "Đơn hàng đang vận chuyển",
              content: "Đơn hàng 348592HFJADK với mã vận đơn HGPAKRHNSK đã được giao cho đơn vị vận chuyển qua phương thức vận chuyển Nhanh ",
              time: "03:24 09/03/2023"
            ),
            itemNotification(
              title: "Đơn hàng đang vận chuyển",
              content: "Đơn hàng 348592HFJADK với mã vận đơn HGPAKRHNSK đã được giao cho đơn vị vận chuyển qua phương thức vận chuyển Nhanh ",
              time: "03:24 09/03/2023"
            ),
            itemNotification(
              title: "Đơn hàng đang vận chuyển",
              content: "Đơn hàng 348592HFJADK với mã vận đơn HGPAKRHNSK đã được giao cho đơn vị vận chuyển qua phương thức vận chuyển Nhanh ",
              time: "03:24 09/03/2023"
            ),
            itemNotification(
              title: "Đơn hàng đang vận chuyển",
              content: "Đơn hàng 348592HFJADK với mã vận đơn HGPAKRHNSK đã được giao cho đơn vị vận chuyển qua phương thức vận chuyển Nhanh ",
              time: "03:24 09/03/2023"
            ),
            itemNotification(
              title: "Đơn hàng đang vận chuyển",
              content: "Đơn hàng 348592HFJADK với mã vận đơn HGPAKRHNSK đã được giao cho đơn vị vận chuyển qua phương thức vận chuyển Nhanh ",
              time: "03:24 09/03/2023"
            ),
            itemNotification(
              title: "Đơn hàng đang vận chuyển",
              content: "Đơn hàng 348592HFJADK với mã vận đơn HGPAKRHNSK đã được giao cho đơn vị vận chuyển qua phương thức vận chuyển Nhanh ",
              time: "03:24 09/03/2023"
            ),
            itemNotification(
              title: "Đơn hàng đang vận chuyển",
              content: "Đơn hàng 348592HFJADK với mã vận đơn HGPAKRHNSK đã được giao cho đơn vị vận chuyển qua phương thức vận chuyển Nhanh ",
              time: "03:24 09/03/2023"
            ),
            itemNotification(
              title: "Đơn hàng đang vận chuyển",
              content: "Đơn hàng 348592HFJADK với mã vận đơn HGPAKRHNSK đã được giao cho đơn vị vận chuyển qua phương thức vận chuyển Nhanh ",
              time: "03:24 09/03/2023"
            ),
            itemNotification(
              title: "Đơn hàng đang vận chuyển",
              content: "Đơn hàng 348592HFJADK với mã vận đơn HGPAKRHNSK đã được giao cho đơn vị vận chuyển qua phương thức vận chuyển Nhanh ",
              time: "03:24 09/03/2023"
            )
          ],
        ),
      ),
    );
  }

  Widget itemNotification({required String title,required String content,required String time}){
    return Container(
      padding: EdgeInsets.only(left: 16,top:16,right: 16,bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          children: [
            SvgPicture.asset("assets/icons/note.svg"),
            SizedBox(width: 8,),
            Expanded(child: Text(title,style: TextStyle(color: Theme.of(context).primaryColor),)),
            Container(
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).primaryColor,),
                )
          ],
        ),
        SizedBox(height: 8,),
        Text(content,style: TextStyle(),maxLines: 4,),
        SizedBox(height: 8,),
        Text(time,style: TextStyle(fontSize: 12),)
      ]),
    );
  }
}
