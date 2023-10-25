import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/screen/blog/blog_screen.dart';
import 'package:zin/screen/cart/cart_screen.dart';
import 'package:zin/screen/login_screen.dart';
import 'package:zin/screen/notification/notification_screen.dart';
import 'package:zin/screen/setting/change_password/change_password.dart';
import 'package:zin/screen/deposit_and_withdrawal_history/history_dw.dart';
import 'package:zin/screen/home/home_screen.dart';
import 'package:zin/screen/information_customer/information_customer_screen.dart';
import 'package:zin/screen/order_history/order_history_screen.dart';
import 'package:zin/screen/overview_report/overview_report_screen.dart';
import 'package:zin/screen/product/product_screen.dart';
import 'package:zin/screen/setting/setting_screen.dart';
import 'package:zin/screen/wallet_management/wallet_management_screen.dart';

AppBar itemappbar({required GlobalKey<ScaffoldState> key}) {
  return AppBar(
    elevation: 1,
    shadowColor:Colors.black.withOpacity(0.4),
    leading: InkWell(
      onTap: () {
        key.currentState!.openDrawer();
      },
      child: Container(
        // width: 8,
        // height: 8,
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
        ),
        child: SvgPicture.asset("assets/icons/menu.svg"),
      ),
    ),
    title: Row(
      mainAxisAlignment:
          MainAxisAlignment.center, // Để căn giữa theo chiều ngang
      children: <Widget>[
        Container(
          width: 80,
          child: Image.asset("assets/images/zinappbar.png"),
        ),
      ],
    ),
    actions: [
      InkWell(
        onTap: () {
          Get.off(CartScreen());
        },
        child: Container(
          width: 24,
          height: 24,
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Color(0xFFFAEEEF)),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: SvgPicture.asset("assets/icons/cart2.svg"),
          ),
        ),
      ),
      InkWell(
        onTap: () {
          key.currentState!.openEndDrawer(); //  Mở End Drawer
        },
        child: Container(
          width: 24,
          height: 24,
          margin: EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Color(0xFFFAEEEF)),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: SvgPicture.asset("assets/icons/account.svg"),
          ),
        ),
      ),
    ],
  );
}

Drawer itemDrawer() {
  return Drawer(
    backgroundColor: Color(0xFFFFFFFF),
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          height: AppBar().preferredSize.height,
        ),
        ListTile(
          title: const Text('TRANG CHỦ'),
          onTap: () {
            Get.off(HomeScreen());
          },
        ),
        ListTile(
          title: const Text('THÀNH VIÊN'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('SẢN PHẨM'),
          onTap: () {
            Get.off(ProductScreen());
          },
        ),
        ListTile(
          title: const Text('VỀ CHÚNG TÔI'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('BLOG'),
          onTap: () {
            Get.off(BlogScreen());
          },
        ),
      ],
    ),
  );
}

Drawer itemEndDrawer({required BuildContext context}) {
  return Drawer(
      backgroundColor: Color(0xFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 54,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(30),
                    color: Colors.red,
                    // ),
                    height: 60,
                    width: 60,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      "NGUYỄN VĂN A",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      "Affiliate",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFA4A4A4)),
                    ),
                  ),
                )
              ],
            ),
            Divider(color: Color(0xFFE7E7E7)),
            InkWell(
              onTap: () {
                Get.off(InformationCustomerScreen());
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 6),
                child: Text(
                  "Thông tin cá nhân",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Divider(color: Color(0xFFE7E7E7)),
            InkWell(
              onTap: () {
                Get.off(OverviewReportScreen());
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 16, top: 16),
                child: Text(
                  "Báo cáo tổng quan",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.off(OrderHistoryScreen());
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Lịch sử đơn hàng",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Đội nhóm",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.off(WalletManagementScreen());
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Quản lý ví",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.off(DepositAndWithdrawalHistory());
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Lịch sử nạp, rút",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.off(NotificationScreen());
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Thông báo",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Divider(color: Color(0xFFE7E7E7)),
            InkWell(
              onTap: () {
                Get.off(SettingScreen());
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Cài đặt",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.off(LoginScreen());
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Đăng xuất",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      )
      //   ListView(
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: [

      //       SizedBox(
      //         height: AppBar().preferredSize.height,
      //       ),
      //       ListTile(
      //         title: const Text('TRANG CHỦ'),
      //         onTap: () {
      //           Get.off(HomeScreen());
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('THÀNH VIÊN'),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         title: const Text('SẢN PHẨM'),
      //         onTap: () {
      //           Get.off(ProductScreen());
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('VỀ CHÚNG TÔI'),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         title: const Text('BLOG'),
      //         onTap: () {
      //           Get.off(BlogScreen());
      //         },
      //       ),
      //     ],
      //   ),
      );
}
