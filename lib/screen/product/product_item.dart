import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zin/screen/product/product_detail_screen.dart';

class ProductItem extends StatefulWidget {
   ProductItem({
    this.title,
    super.key});

String? title;
  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        Get.off(ProductDetailScreen(title: widget.title ?? "",));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title ?? "",
                    // "Kem chống nắng Image 32g version New 20djdjdjddddddddddddddeeeeeeeeeee",
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 1,
                    // textAlign: TextAlign.left,
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
      ),
    );
  }
}