import 'package:flutter/material.dart';

class LatestNews extends StatefulWidget {
  const LatestNews({super.key});

  @override
  State<LatestNews> createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      width: 307,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Column(children: [
        // ClipRRect(
        //   child: ,)
        Container(
          height: 204,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              color: Colors.amber),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 8.0, right: 8, top: 8,),
          child: Text(
            "Eget lobortis lorem lacinia. Vivsfsamus sd phrasem per bbbbbbbbbbbbb",
            style: TextStyle(),
            textAlign: TextAlign.start,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Text("Xem thêm",style: TextStyle(color: Color.fromARGB(255, 207, 87, 99)),),
            Icon(Icons.arrow_forward,color: Color.fromARGB(255, 207, 87, 99),size: 17,)
          ],),
        )
      ]),
    );
  }
}
