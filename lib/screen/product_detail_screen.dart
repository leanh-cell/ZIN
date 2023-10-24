import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:zin/components/appbar.dart';
import 'package:zin/screen/blog/blog_screen.dart';
import 'package:zin/screen/cart/cart_screen.dart';
import 'package:zin/screen/home/home_screen.dart';
import 'package:zin/screen/product/product_item.dart';
import 'package:zin/screen/product/product_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({required this.title, super.key});

  String? title;
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Map<String, String> test = {
    'Tất cả': "51",
    '5 sao': "30",
    '4 sao': "2",
    '3 sao': "5",
    '2 sao': "7",
    '1 sao': "7",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFFBF4F5),
      appBar: itemappbar(key: _scaffoldKey),
      drawer: itemDrawer(),
      endDrawer: itemEndDrawer(context: context),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 14, bottom: 14),
            child: Row(
              children: [
                Text(
                  "Trang chủ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Color(0xFFCF5763),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  widget.title ?? "",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFCF5763)),
                )
              ],
            ),
          ),
          CarouselSlider(
            items: [imgProduct(), imgProduct(), imgProduct()],
            // carouselController: _controller,
            options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: false,
                viewportFraction: 1,
                aspectRatio: 8 / 6.5,
                onPageChanged: (index, reason) {}),
          ),
          Container(
            padding: EdgeInsets.only(top: 11, bottom: 11),
            height: 100,
            // color: Colors.amber,
            // width: Get.width,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) => Container(
                      width: 77,
                      height: 77,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFCF5763)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Xem Feedback khách hàng",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Color(0xFFCF5763),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFCF5763),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              "Pinkflash Son Tint PINKFLASH Fall Into Velv et lightweight waterproof 10g",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 17),
            child: Row(
              children: [
                RatingBar.builder(
                  ignoreGestures: true,
                  glow: false,
                  itemSize: 14,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Text(
                  "(35 đánh giá)",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF696666)),
                ),
                Container(
                  width: 1,
                  height: 15,
                  margin: EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(color: Colors.grey),
                ),
                Row(
                  children: [
                    Text(
                      "Đã bán ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "2K ",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFCF5763)),
                    )
                  ],
                ),
                Spacer(),
                SizedBox(
                  child: SvgPicture.asset("assets/icons/share.svg"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 17.0),
            child: Row(
              children: [
                Text(
                  "150.870" + "đ",
                  style: TextStyle(
                      color: Color(0xFFCF5763),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins"),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "240.870" + "đ",
                  style: TextStyle(
                      color: Color(0xFFC4C4C4),
                      fontSize: 10,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Color(0xFFC4C4C4)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 17.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Vận chuyển đến",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF696666)),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Phường Đồng Xuân, Quận Hoànnnnnnnnnnnnnnnnnnnkkkkk",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF383838)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF696666),
                  size: 13,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 17.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Phí vận chuyển dự kiến",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF696666)),
                  ),
                ),
                Expanded(
                  child: Text(
                    "25.453" + "đ",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough,
                        color: Color(0xFF383838)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  child: Text(
                    "0" + "đ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      // decoration: TextDecoration.lineThrough,
                      color: Color(0xFFCF5763),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF696666),
                  size: 13,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 17.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Số lượng",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF696666)),
                  ),
                ),
                Expanded(
                  // flex: 2,
                  child: Row(
                    children: [
                      Container(
                        width: 22,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4)),
                            border: Border.all(color: Colors.grey)
                            // border: Border(
                            //   top: BorderSide(color: Colors.grey, width: 1),
                            //   left: BorderSide(color: Colors.grey, width: 1),
                            //   bottom: BorderSide(color: Colors.grey, width: 1),
                            // ),
                            ),
                        child: Center(
                          child: Container(
                            height: 1,
                            width: 4.67,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 20,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.only(topLeft: Radius.circular(4),bottomLeft: Radius.circular(4)),
                          // border: Border.all(color: Colors.grey)
                          border: Border(
                            top: BorderSide(color: Colors.grey, width: 1),
                            // left: BorderSide(color: Colors.grey, width: 1),
                            bottom: BorderSide(color: Colors.grey, width: 1),
                          ),
                        ),
                        child: Center(child: Text("240")),
                      ),
                      Container(
                        width: 22,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                                bottomRight: Radius.circular(4)),
                            border: Border.all(color: Colors.grey)
                            // border: Border(
                            //   top: BorderSide(color: Colors.grey, width: 1),
                            //   left: BorderSide(color: Colors.grey, width: 1),
                            //   bottom: BorderSide(color: Colors.grey, width: 1),
                            // ),
                            ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 9.5,
                              left: 7,
                              child: Container(
                                height: 1,
                                width: 4.67,
                                color: Colors.black,
                              ),
                            ),
                            Positioned(
                              top: 7.5,
                              left: 9,
                              right: null,
                              child: Container(
                                height: 4.67,
                                width: 1,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "240" + " sản phẩm có sẵn",
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                // Icon(Icons.arrow_back,size: 13,)
              ],
            ),
          ),
          promotion(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                Text(
                  "THÔNG TIN VỀ GIÁ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  width: 28,
                ),
                Text(
                  "MÔ TẢ SẢN PHẨM",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: ReadMoreText(
              "[PHIÊN BẢN MỚI WINERY VELVET] Son Kem Lì Cực Nhẹ Môi Romand Zero Velvet Tint 5.5g \n • Thương hiệu: Romand \n • Xuất xứ thương hiệu: Hàn Quốc\n• Trọng lượng: 5.5g\n*** Thế giới Skinfood là đại lý phân phối chính thức Romand tại Việt Nam ***\nTHÔNG TIN CHI TIẾT\n• Đặc trưng:\nSon Kem Lì Cực Nhẹ Môi Romand Zero Velvet Tint hiện tại đã có tại Thế giới Skinfood có những đặc trưng nổi bật như:\n- Về thiết kế:\nSon Kem Lì Cực Nhẹ Môi Romand Zero Velvet Tint có thân hình trụ tròn, vỏ nhám lì dễ dàng phân biệt màu son bên trong, kích thước cầm vừa tay.\n- Phiên bản mới 'Winery Velvet' mang bầu không khí kết hợp giữa nhung đỏ đậm đà, là phiên bản son với những gam màu đậm, trendy, phù hợp và hoàn hảo dành cho mùa lễ hội cuối năm.\n- Về kết cấu:\n- Chất son mềm mịn như bông, không hề bóng hay dễ bị lem khi lên môi. Độ bám nhiều giờ đồng hồ, son lên màu môi chuẩn chỉ với một lần tô\n- Về kết cấu:\n- Chất son mềm mịn như bông, không hề bóng hay dễ bị lem khi lên môi. Độ bám nhiều giờ đồng hồ, son lên màu môi chuẩn chỉ với một lần tô\n- Về kết cấu:\n- Chất son mềm mịn như bông, không hề bóng hay dễ bị lem khi lên môi. Độ bám nhiều giờ đồng hồ, son lên màu môi chuẩn chỉ với một lần tô\n- Về bảng màu:\n• Bảng màu cực chất và theo kịp xu hướng với những màu thời thượng, hiện tại Thế giới Skinfood có các màu:\n01 Melting: Hồng pha nude\n02 Joyfull: Cánh hồng khô\n03 Persired: Đỏ lạnh\n04 Burnt Heart: Tím nude\n05 Witty: Đỏ gạch\n• Hướng dẫn sử dụng: Bặm nhẹ môi vào khăn giấy để loại bỏ bớt phần son dưỡng thừa và tạo một lớp nền mềm mịn nhưng không quá trơn trượt để áp dụng son dễ hơn. Nhúng đầu cọ vào son và gạt nhẹ vào phần miệng/ lọ cây son để lấy được lượng son vừa đủ dùng. Chấm son vào lòng môi trên và dưới, sau đó tán đều chất son qua hai bên tái và phải bằng đầu cọ hoặc tay không để tạo hiệu ứng 3D hoàn hảo cho môi\n• Hạn sử dụng: 3 năm kể từ ngày sản xuất/NSX xem trên bao bì",
              trimLines: 2,
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: ' Hiển thị thêm',
              trimExpandedText: ' Ẩn Bớt',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          productReviews(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text("Sản Phẩm Tương Tự"),
          ),
          ...List.generate(
              3,
              (index) => ProductItem(
                    title: "product 2",
                  ))
        ]),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 16, bottom: 22, right: 16),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    EdgeInsets.only(left: 14, top: 15, bottom: 15, right: 14),
                decoration: BoxDecoration(
                    color: Color(0xFF2F81ED),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/post.svg"),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "ĐĂNG BÁN",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.only(left: 14, top: 15, bottom: 15, right: 14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFCF5763)),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/addcart.svg"),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "THÊM VÀO GIỎ HÀNG",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imgProduct() {
    return Container(
      width: Get.width,
      height: 317,
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFFE66482)),
      // child:
    );
  }

  Widget promotion() {
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/box.svg"),
              SizedBox(
                width: 8,
              ),
              Text(
                "Khuyến mại",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Stack(children: [
              Container(
                height: 147,
                width: 147,
                decoration: BoxDecoration(
                    color: Color(0xFFFF6969),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey)),
              ),
              Positioned(
                left: 8,
                bottom: 7,
                child: Container(
                  width: 76,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    border: Border.all(
                      color: Color(0xFFCF5763),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Quà tặng",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFCF5763)),
                  )),
                ),
              ),
            ]),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "[HB GIFT] Sữa dưỡng thể Vaseline Gluta - HYAhhhhhhhhhhhhhhhh...",
                    style: TextStyle(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        "100.000" + "đ",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.grey,
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "0" + "đ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFCF5763)),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }

  Widget productReviews() {
    List<Widget> rateWidgets = [];

    // Duyệt qua map và tạo các widget
    test.forEach((title, count) {
      rateWidgets.add(itemRate(
        title: title,
        count: count.toString(),
        ontap: () {
          // Xử lý khi một mục được chọn (nếu cần)
          print('$title được chọn');
        },
      ));
    });
    return Container(
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ĐÁNH GIÁ SẢN PHẨM",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Row(
            children: [
              Text(
                "4.9" + "/" + "5",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber),
              ),
              SizedBox(
                width: 20,
              ),
              RatingBar.builder(
                glow: false,
                itemSize: 20,
                initialRating: 4.9,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
        ),
        // Container(
        //   child: Row(children: [itemRate(title: "Tất cả", count: "51")]),
        // )
        Container(
          width: Get.width,
          height: 49,
          padding: EdgeInsets.only(top: 4.5, bottom: 4.5),
          margin: EdgeInsets.only(bottom: 16),
          child:
              ListView(scrollDirection: Axis.horizontal, children: rateWidgets),
        ),
        ...List.generate(3, (index) => itemCommment()),
      ]),
    );
  }

  Widget itemRate({String? title, String? count, void Function()? ontap}) {
    return InkWell(
      splashColor: Colors.white.withOpacity(0.0),
      onTap: () {
        ontap;
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.only(top: 11, left: 23.5, bottom: 11, right: 23.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border:
                Border.all(color: Theme.of(context).primaryColor, width: 1)),
        child: Row(
          children: [
            Text(
              title ?? "",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor),
            ),
            Text(
              "(${count ?? ""})",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor),
            )
          ],
        ),
      ),
    );
  }

  Widget itemCommment() {
    return Container(
      // decoration: BoxDecoration(),
      margin: EdgeInsets.only(bottom: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 6.0),
          child: Text(
            "Kimyennguyen",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 6.0),
          child: RatingBar.builder(
            glow: false,
            itemSize: 20,
            initialRating: 4.9,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              Text(
                "2022-02-14 ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.grey),
              ),
              Text("19:20",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.grey))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "Sản phẩm chất lượng, giao hàng nhanh. Đóng gói cẩn thận, được tặng kèm sản phẩm, đúng với mô tả! ",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ...List.generate(
              10,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "assets/images/co.jpeg",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ]),
        ),

        // Wrap(
        //   direction: Axis.horizontal,
        //   children: [
        //     ...List.generate(10, (index) =>  ClipRRect(
        //           borderRadius: BorderRadius.circular(8),
        //           child: Image.asset(
        //             "assets/images/co.jpeg",
        //             width: 80,
        //             height: 80,
        //             fit: BoxFit.cover,
        //           ),
        //         ),)
        // ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     ClipRRect(
        //       borderRadius: BorderRadius.circular(8),
        //       child: Image.asset(
        //         "assets/images/co.jpeg",
        //         width: 80,
        //         height: 80,
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //     ClipRRect(
        //       borderRadius: BorderRadius.circular(8),
        //       child: Image.asset(
        //         "assets/images/co.jpeg",
        //         width: 80,
        //         height: 80,
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ],
        // )
        //   ],
        // )
      ]),
    );
  }
}
