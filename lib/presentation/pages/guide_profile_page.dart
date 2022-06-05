// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../constants.dart';

class TwoText {
  final String number;
  final String name;

  TwoText({required this.number, required this.name});
}

List<TwoText> twoText = [
  TwoText(number: "359", name: "Listings"),
  TwoText(number: "10,289", name: "Followers"),
  TwoText(number: "4317", name: "Followings"),
];

class GuideProfilePage extends StatefulWidget {
  const GuideProfilePage({Key? key}) : super(key: key);

  @override
  State<GuideProfilePage> createState() => _GuideProfilePageState();
}

class _GuideProfilePageState extends State<GuideProfilePage> {
  var rating = 5.0;
  int item = 0;
  bool showReviews = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guide Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.mail_sharp),
                SizedBox(width: 50),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: 50),
                Icon(Icons.settings),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Michael Angelo",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Manhatten, NY",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            SizedBox(height: 5),
            SmoothStarRating(
              color: Constant.kGreenColor,
              borderColor: Constant.kGreenColor,
              rating: rating,
              size: 12,
              spacing: 5,
              starCount: 5,
              onRated: (value) {
                setState(() {
                  rating = value;
                });
              },
            ),
            SizedBox(height: 5),
            Text(
              "UI Designer",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Member Since July 2013",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                child: Container(
                  height: 35,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Verified ID",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                child: Container(
                  height: 35,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Email Address",
                      ),
                      Text(
                        "lording@email.com",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                child: Container(
                  height: 35,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Phone Number",
                      ),
                      Text(
                        "+41 5678 4325",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 70,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 5.0,
                        percent: 0.75,
                        center: Text("75%"),
                        progressColor: Colors.green,
                      ),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery Rate",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "75%",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 5.0,
                        percent: 0.50,
                        center: Text("50%"),
                        progressColor: Colors.green,
                      ),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Projects",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "50%",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 70,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 5.0,
                        percent: 0.89,
                        center: Text("89%"),
                        progressColor: Colors.green,
                      ),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Linear Conductor",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "89%",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 5.0,
                        percent: 0.80,
                        center: Text("80%"),
                        progressColor: Colors.green,
                      ),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Linear Conduct",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "80%",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35),
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
              padding: EdgeInsets.symmetric(horizontal: 35),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Education",
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Experience",
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Skills",
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "3 Reviews",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  showReviews = !showReviews;
                                });
                              },
                              child: Icon(
                                showReviews
                                    ? Icons.arrow_upward
                                    : Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: showReviews,
                        child: Column(
                          children: [
                            Container(
                              height: 35,
                              width: double.infinity,
                              color: Colors.transparent,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Christina"),
                                      SizedBox(height: 5),
                                      SmoothStarRating(
                                        color: Constant.kGreenColor,
                                        borderColor: Constant.kGreenColor,
                                        rating: rating,
                                        size: 12,
                                        spacing: 5,
                                        starCount: 5,
                                        onRated: (value) {
                                          setState(() {
                                            rating = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "14 June 2017",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 35,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
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
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 35,
                              width: double.infinity,
                              color: Colors.transparent,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Tony Ramirez"),
                                      SizedBox(height: 5),
                                      SmoothStarRating(
                                        color: Constant.kGreenColor,
                                        borderColor: Constant.kGreenColor,
                                        rating: rating,
                                        size: 12,
                                        spacing: 5,
                                        starCount: 5,
                                        onRated: (value) {
                                          setState(() {
                                            rating = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "14 June 2017",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 35,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
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
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 35,
                              width: double.infinity,
                              color: Colors.transparent,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Gabriella Madelaine"),
                                      SizedBox(height: 5),
                                      SmoothStarRating(
                                        color: Constant.kGreenColor,
                                        borderColor: Constant.kGreenColor,
                                        rating: rating,
                                        size: 12,
                                        spacing: 5,
                                        starCount: 5,
                                        onRated: (value) {
                                          setState(() {
                                            rating = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "14 June 2017",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 35,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
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
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Write Review",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 50,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Name",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 150,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextField(
                                maxLines: 5,
                                decoration: InputDecoration(
                                  hintText: "Write your review",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 40,
                              width: 150,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Constant.kGreenColor,
                              ),
                              child: Text(
                                "SEND",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
