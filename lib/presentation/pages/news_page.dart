// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../constants.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  double rating = 5.0;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SHORT DESCRIPTION",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "PRODUCT PROMO",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 3,
                    ),
                  ),
                  SizedBox(height: 10),
                  Material(
                    elevation: 2.0,
                    color: Colors.transparent,
                    child: Container(
                      height: 40,
                      width: 135,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "BUTTON",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: screenHeight / 2.2,
              width: double.infinity,
              color: Colors.transparent,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  height: 140,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Container(
                        height: 140,
                        width: 130,
                        color: Colors.grey.shade500,
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Product Name",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Category",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 20),
                          SmoothStarRating(
                            color: Constant.kGreenColor,
                            borderColor: Constant.kGreenColor,
                            rating: rating,
                            size: 14,
                            starCount: 5,
                            onRated: (value) {
                              setState(() {
                                rating = value;
                              });
                            },
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "\$225",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "\$125",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        children: [
                          SizedBox(height: 100),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Text(
                              "3 hours ago",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
            // Container(
            //   margin: EdgeInsets.symmetric(horizontal: 20),
            //   height: 140,
            //   width: double.infinity,
            //   color: Colors.transparent,
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 140,
            //         width: 130,
            //         color: Colors.grey.shade500,
            //       ),
            //       SizedBox(width: 15),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           SizedBox(height: 20),
            //           Text(
            //             "Product Name",
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           SizedBox(height: 5),
            //           Text(
            //             "Category",
            //             style: TextStyle(
            //               fontSize: 14,
            //               color: Colors.grey,
            //             ),
            //           ),
            //           SizedBox(height: 20),
            //           SmoothStarRating(
            //             color: Constant.kGreenColor,
            //             borderColor: Constant.kGreenColor,
            //             rating: rating,
            //             size: 14,
            //             starCount: 5,
            //             onRated: (value) {
            //               setState(() {
            //                 rating = value;
            //               });
            //             },
            //           ),
            //           SizedBox(height: 5),
            //           Row(
            //             children: [
            //               Text(
            //                 "\$225",
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: Colors.grey,
            //                 ),
            //               ),
            //               SizedBox(width: 5),
            //               Text(
            //                 "\$125",
            //                 style: TextStyle(
            //                   fontSize: 16,
            //                   color: Colors.green,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //       Expanded(child: SizedBox()),
            //       Column(
            //         children: [
            //           SizedBox(height: 100),
            //           Container(
            //             margin: EdgeInsets.symmetric(
            //               horizontal: 10,
            //             ),
            //             child: Text(
            //               "3 hours ago",
            //               style: TextStyle(
            //                 fontSize: 12,
            //                 color: Colors.grey,
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
