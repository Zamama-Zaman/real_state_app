// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TwoText {
  final String number;
  final String name;

  TwoText({required this.number, required this.name});
}

List<TwoText> twoText = [
  TwoText(number: "359", name: "Photos"),
  TwoText(number: "10,289", name: "Followers"),
  TwoText(number: "4317", name: "Followings"),
];

class OverviewPage extends StatefulWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  var rating = 5.0;
  double sliderValue = 0.0;
  int item = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.pin_drop,
                  color: Constant.kGreenColor,
                  size: 18,
                ),
                Text(
                  "Mexico",
                  style: TextStyle(
                    fontSize: 12,
                    color: Constant.kGreenColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              "Lost Treasure of Inca",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5),
            SmoothStarRating(
              color: Constant.kGreenColor,
              borderColor: Constant.kGreenColor,
              rating: rating,
              size: 18,
              starCount: 5,
              onRated: (value) {
                setState(() {
                  rating = value;
                });
              },
            ),
            SizedBox(height: 10),
            Text(
              "\$150",
              style: TextStyle(
                fontSize: 22,
                color: Constant.kGreenColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "65% Done",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 2,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 2.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 5.0),
                ),
                child: Slider.adaptive(
                  max: 100,
                  min: 0,
                  value: 55,
                  onChanged: (val) {},
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/funds.png",
                          width: 25,
                          height: 25,
                        ),
                        Container(
                          height: 50,
                          width: 90,
                          color: Colors.transparent,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(
                                "67%",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "FUNDED",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/investors.png",
                          width: 25,
                          height: 25,
                        ),
                        Container(
                          height: 50,
                          width: 90,
                          color: Colors.transparent,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(
                                "65",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "INVESTORS",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/time.png",
                          width: 25,
                          height: 25,
                        ),
                        Container(
                          height: 50,
                          width: 90,
                          color: Colors.transparent,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(
                                "3",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "DAYS TO GO",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 105,
              margin: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.transparent,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      height: 105,
                      width: 80,
                      margin: EdgeInsets.only(right: 30),
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Constant.kGreenColor,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Text(
                            "Researh\n Report",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return Container(
                    height: 105,
                    width: 80,
                    margin: EdgeInsets.only(right: 30),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Text(
                          "Recipient\n Name",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              // Row(
              //   children: [
              //     Container(
              //       height: 105,
              //       width: 80,
              //       margin: EdgeInsets.only(right: 10),
              //       color: Colors.red,
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Container(
              //             height: 55,
              //             width: 55,
              //             decoration: BoxDecoration(
              //               color: Colors.blue,
              //               borderRadius: BorderRadius.circular(50),
              //             ),
              //           ),
              //           Text(
              //             "Researh\n Report",
              //             style: TextStyle(
              //               color: Colors.grey.shade300,
              //               fontSize: 16,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomLeft,
              child: Text(
                "ABOUT ME",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Weasel maternal dove far the jeepers goodness",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "inconsiderately spelled so ubiquitous amused",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "knitted and altriuistic amiable far much toward.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomLeft,
              child: Text(
                "1. Prepare",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35),
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "A wonderful serenity has taken possession of my",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "entire soul, like these sweet mornings of spring",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "which I enjoy with my whole heart.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomLeft,
              child: Text(
                "2. Cooking Directions",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35),
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "I should be incapable of drawing a single stroke at",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "the present moment; and yet I feel taht I never was",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "a greate artist than now. When, while the lovely",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "valley teems with vapour around me, and the",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "meridian sun strikes the upper surface.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomLeft,
              child: Text(
                "3. Serve",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35),
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "When, while the lovely valley teems with vapour",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "around me, and the meridian sun striken the upper",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "surface.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.transparent,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: twoText.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(() {
                      item = index;
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 124,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Text(
                          twoText[index].number,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          twoText[index].name,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        item == index
                            ? Container(
                                height: 3,
                                width: double.infinity,
                                color: Constant.kGreenColor,
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomLeft,
              child: Text(
                "ABOUT ME",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Weasel maternal dove far the jeepers goodness",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "inconsiderately spelled so ubiquitous amused",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "knitted and altriuistic amiable far much toward.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: 50,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 5, right: 10),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Outcome Detail",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(height: 3),
                      Text(
                        " Today at 12.00 PM",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 2),
                    child: Text(
                      "- \$20,00",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: 50,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 5, right: 10),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Constant.kGreenColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Income Detail",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(height: 3),
                      Text(
                        " Today at 12.00 PM",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 2),
                    child: Text(
                      "- \$55,00",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Constant.kGreenColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: 50,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 5, right: 10),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Constant.kGreenColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Income Detail",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(height: 3),
                      Text(
                        " Today at 12.00 PM",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 2),
                    child: Text(
                      "+ \$125,00",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Constant.kGreenColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: 50,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 5, right: 10),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Outcome Detail",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(height: 3),
                      Text(
                        " Today at 12.00 PM",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 2),
                    child: Text(
                      "- \$20,00",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: 50,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 5, right: 10),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Constant.kGreenColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Income Detail",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(height: 3),
                      Text(
                        " Today at 12.00 PM",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 2),
                    child: Text(
                      "+ \$125,00",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Constant.kGreenColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Constant.kGreenColor,
              ),
              child: Text(
                "BOOK THIS TRIP NOW",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomLeft,
              child: Text(
                "RELATED PRODUCTS",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SizedBox(
                height: 220,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 180,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 170,
                          width: double.infinity,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("Product Name"),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "\$255",
                            style: TextStyle(
                              fontSize: 12,
                              color: Constant.kGreenColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
