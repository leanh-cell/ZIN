import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CommentCustomer extends StatefulWidget {
  const CommentCustomer({super.key});

  @override
  State<CommentCustomer> createState() => _CommentCustomerState();
}

class _CommentCustomerState extends State<CommentCustomer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      width: Get.width,
      padding: EdgeInsets.only(left: 8, right: 8, top: 16,bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start, children: [
        SvgPicture.asset("assets/icons/comment.svg"),
        SizedBox(
          height: 8,
        ),
        Text(
          "Pellentesque eu nibh eget mauris congue mattis mattis nec tellus. Phasellus imperdiet elit eu magna dictum, bibendum cursus velit sodales. Donec sed neque eget",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
         SizedBox(
              height: 8,
            ),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                color: Colors.red,
                child: SvgPicture.asset("assets/icons/person.svg")),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Robert Fox"),
                Text(
                  "Robert Fox",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 153, 153, 153)),
                )
              ],
            ),
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
        ),
      ]),
    );
  }
}