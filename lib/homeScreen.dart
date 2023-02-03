import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List name = [
    "SHOES",
    "T-SHIRTS",
    "TOP",
    "BLAZER",
    "HODIE",
    "JEANS",
    "COMBO",
    "JACKET",
    "SHRUG",
    "HOT WEAR",
    "SHORTS",
    "SHIRTS",
  ];
  List images = [
    "assets/images/shoes.png",
    "assets/images/t-shirts.jpg",
    "assets/images/top.jpg",
    "assets/images/blazer.jpg",
    "assets/images/hodie.jpg",
    "assets/images/jeans.jpg",
    "assets/images/ear_ring.jpg",
    "assets/images/jacket.jpg",
    "assets/images/shrug.jpg",
    "assets/images/hot_wear.jpg",
    "assets/images/shorts.jpg",
    "assets/images/shirt.jpg",
  ];
  List price = [
    "\$30.33",
    "\$52.00",
    "\$40.00",
    "\$99.99",
    "\$70.00",
    "\$72.30",
    "\$56.27",
    "\$60.90",
    "\$90.99",
    "\$45.90",
    "\$99.99",
    "\$25.33",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "SHOPPING GALLERY UI",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff5780B9),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightBlueAccent,
          child: GridView.builder(
        itemCount: name.length,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
            FashionWidget(name[index], price[index], images[index]),
      )),
    ));
  }

  Widget FashionWidget(String? n1, String? pr, String? img) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              child: Image.asset("$img"),
            ),
            Container(
              height: 500,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              //
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 40,
                  width: 200,
                  // margin: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(color: Colors.black54),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${n1}"),
                        Text("${pr}"),
                      ],
                    ),
                  ),
                ),
              ),

            ),
          ],
        ),

      ],
    );
  }
}
