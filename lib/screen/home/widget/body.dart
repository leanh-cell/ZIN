import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:zin/screen/home/widget/comment_customer.dart';
import 'package:zin/screen/home/widget/latest_new.dart';
import 'package:zin/screen/product/product_item.dart';

class WidgetBody extends StatefulWidget {
  const WidgetBody({super.key});

  @override
  State<WidgetBody> createState() => _WidgetBodyState();
}

class _WidgetBodyState extends State<WidgetBody> {
  double rating = 0;

  List<CommentCustomer> list = [
    CommentCustomer(),
    CommentCustomer(),
    CommentCustomer()
  ];
  final _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          topPeople(),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/bloomleft.svg"),
                Text("    Tất cả sản phẩm    "),
                SvgPicture.asset("assets/icons/bloomright.svg"),
              ],
            ),
          ),
          ...List.generate(4, (index) {
            return ProductItem(title: "Kem chống nắng Image 32g version New 20djdjdjddddddddddddddeeeeeeeeeee");
          }),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [Text("Khách hàng nói gì về chúng tôi")],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          CarouselSlider(
            items: list,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: list.length <= 1 ? false : true,
                enlargeCenterPage: false,
                viewportFraction: 1,
                aspectRatio: 14 / 7,
                onPageChanged: (index, reason) {}),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: list.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 6.0,
                  height: 6.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
          // commentCustomer(),
          Padding(
            padding: EdgeInsets.only(top: 26,bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/bloomleft.svg"),
                Text("    Tin Tức Mới Nhất    "),
                SvgPicture.asset("assets/icons/bloomright.svg"),
              ],
            ),
          ),
          Container(
            height: 290,
            child: Row(
              children: [
            // ...List.generate(4,(index) => LatestNews() ),
            Expanded(child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) => LatestNews())),
            ],),
          ),
          
          // Row(
          //   children: [
          //     Expanded(
          //       child: ListView.builder(
          //         scrollDirection: Axis.horizontal,
          //         itemCount: 4,
          //         itemBuilder:(BuildContext context, int index) => LatestNews()),
          //     ),
          //   ],
          // ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }

  Widget topPeople() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Text(
            "Top 10 Cá nhân có doanh thu cao nhất",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          // Container(
          //   width: Get.width,
          //   height: 100,
          //   color: Colors.amber,
          // ),
          SizedBox(
            height: 150,
            child: Stack(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Stack(children: [
                        Positioned(
                          child: Container(
                            width: 82,
                            height: 82,
                            margin: EdgeInsets.only(bottom: 7, top: 5),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/anh1.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(41),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 0,
                                  offset: Offset(2, 2), // Shadow position
                                ),
                              ],
                            ),
                            //  child: Image.asset("assets/images/anh1.png",)
                          ),
                        ),
                        Positioned(
                          top: -0,
                          left: -0,
                          child: Container(
                            child: SvgPicture.asset("assets/icons/medal.svg"),
                          ),
                        ),
                      ]),
                      Text(
                        "Nhóm 1",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 108, 13, 15),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "189,000,000",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 108, 13, 15),
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                // bottom: null,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Stack(children: [
                            Positioned(
                              child: Container(
                                width: 62,
                                height: 62,
                                margin: EdgeInsets.only(bottom: 7),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/anh1.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(41),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 0,
                                      offset: Offset(2, 2), // Shadow position
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              child: Container(
                                child:
                                    SvgPicture.asset("assets/icons/medal2.svg"),
                              ),
                            )
                          ]),
                          Text(
                            "Nhóm 1",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 108, 13, 15),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "189,000,000",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 108, 13, 15),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      child: Column(
                        children: [
                          Stack(children: [
                            Positioned(
                              child: Container(
                                width: 62,
                                height: 62,
                                margin: EdgeInsets.only(bottom: 7),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/anh1.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(41),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 0,
                                      offset: Offset(2, 2), // Shadow position
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              child: Container(
                                child:
                                    SvgPicture.asset("assets/icons/medal3.svg"),
                              ),
                            )
                          ]),
                          Text(
                            "Nhóm 1",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 108, 13, 15),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "189,000,000",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 108, 13, 15),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),

          SizedBox(
            height: 14,
          ),
          Wrap(
            runSpacing: 10,
            spacing: 5,
            children: [
              ...List.generate(8, (index) {
                return Container(
                  // color: Colors.amber,
                  width: (Get.width - (16 + 23)) / 2 ,
                  // height: 40,
                  child: Stack(children: [
                    Positioned(
                      top: 4,
                      left: 13,
                      child: Container(
                        // height: Get.height ,
                        width: (Get.width - (16 + 23)) / 2 - 13,
                        padding: EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 255, 222, 230)),
                        child: Row(children: [
                          Text(
                            "nhóm 1",
                            style: TextStyle(
                                fontSize: 10,
                                height: 2,
                                color: Color(0xFF6C0D0F)),
                          ),
                        ]),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        child: Stack(children: [
                          Positioned(
                            child: Container(
                              padding: EdgeInsets.only(left: 10),
                              child: ClipRRect(
                                child: Image.asset(
                                  "assets/images/anh1.png",
                                  width: 28,
                                  height: 28,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -3,
                            left: 3,
                            child: SizedBox(
                              child: Text(
                                "5",
                                style: TextStyle(
                                    color: Color(0xFF6C0D0F),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ]),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget allProduct() {
    return Container(
      // margin: EdgeInsets.only(left: 16,right: 16),
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Container(
            height: 200,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            // child: Image.asset("assets/images/pr1.png"),
          ),
          Container(
            padding: EdgeInsets.only(left: 9, right: 9, top: 10, bottom: 12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              children: [
                Text(
                  "Kem chống nắng Image 32g version New 20djdjdjddddddddddddddeeeeeeeeeee",
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "894.000đ",
                      style: TextStyle(
                          color: Color(0xFFCF5763),
                          fontSize: 16,
                          fontFamily: "Montserrat"),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(right: 8),
                      child: SvgPicture.asset("assets/icons/cart.svg"),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text("Đã bán: "),
                    Text("23"),
                    Spacer(),
                    RatingBar.builder(
                      glow: false,
                      itemSize: 20,
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
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}
