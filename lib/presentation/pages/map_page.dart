// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../constants.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  var rating = 5.0;
  bool showBottomWidget = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            setState(() {
              showBottomWidget = false;
            });
          },
          child: Stack(
            children: [
              Positioned(
                top: 10,
                right: 10,
                left: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: screenWidth,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 30),
                      Expanded(
                          child: Text(
                        "Cafe",
                        style: TextStyle(color: Colors.grey),
                      )),
                      Icon(Icons.mic, color: Colors.grey),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: screenHeight / 8,
                left: 10,
                child: FloatingActionButton(
                  elevation: 0.0,
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                top: screenHeight / 4.6,
                left: 10,
                child: FloatingActionButton(
                  elevation: 0.0,
                  onPressed: () {},
                  child: Icon(
                    Icons.minimize_sharp,
                    color: Colors.grey,
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                top: screenHeight / 3,
                left: 10,
                child: FloatingActionButton(
                  elevation: 0.0,
                  onPressed: () {},
                  child: Icon(
                    Icons.my_location_sharp,
                    color: Colors.grey,
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Visibility(
                  visible: showBottomWidget,
                  child: Container(
                    height: screenHeight / 2.5,
                    width: screenWidth,
                    color: Colors.white,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            height: 136,
                            width: double.infinity,
                            padding: EdgeInsets.only(
                              top: 20,
                              right: 20,
                              left: 20,
                            ),
                            color: Colors.white,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Kennington Lane Cafe",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        SmoothStarRating(
                                          color: Constant.kGreenColor,
                                          borderColor: Constant.kGreenColor,
                                          rating: rating,
                                          size: 12,
                                          starCount: 5,
                                          spacing: 2,
                                          onRated: (value) {
                                            setState(() {
                                              rating = value;
                                            });
                                          },
                                        ),
                                        SizedBox(width: 5),
                                        Container(
                                          height: 8,
                                          width: 8,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade300,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Container(
                                          height: 3,
                                          width: 3,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        Text(
                                          "Cafe",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.send,
                                          size: 16,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "333 Kerningtom Lane \nVauchall London, England(1.3 km)",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timelapse,
                                          size: 16,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "Open Until 20:00 PM",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(child: SizedBox()),
                                Container(
                                  height: 100,
                                  width: 120,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Visibility(
        visible: !showBottomWidget,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              showBottomWidget = true;
            });
          },
          child: Icon(Icons.menu),
        ),
      ),
    );
  }
}
