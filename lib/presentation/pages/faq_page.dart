// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_state_app/presentation/widgets/drawer_widget.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  bool showMore = false,
      showMore1 = false,
      showMore2 = false,
      showMore3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerWidget(context),
      appBar: AppBar(
        title: Text("FAQ's"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Frequently Asked\nQuestions",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Withdraw Money to Bank Account",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            splashRadius: 25.0,
                            constraints: BoxConstraints(
                              minHeight: 15,
                              minWidth: 15,
                            ),
                            onPressed: () {
                              setState(() {
                                showMore = !showMore;
                              });
                            },
                            icon: showMore
                                ? Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 24,
                                    color: Colors.grey,
                                  ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
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
                              "Weasel maternal dove far the jeepers goodness in the",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "inconsiderately spelled so ubiquitous amused look upon the side",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Visibility(
                        visible: showMore,
                        child: Container(
                          height: 35,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Weasel maternal dove far the jeepers goodness in the",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "inconsiderately spelled so ubiquitous amused look upon the side",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Withdraw Money to Bank Account",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            splashRadius: 25.0,
                            constraints: BoxConstraints(
                              minHeight: 15,
                              minWidth: 15,
                            ),
                            onPressed: () {
                              setState(() {
                                showMore1 = !showMore1;
                              });
                            },
                            icon: showMore1
                                ? Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 24,
                                    color: Colors.grey,
                                  ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
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
                              "Weasel maternal dove far the jeepers goodness in the",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "inconsiderately spelled so ubiquitous amused look upon the side",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Visibility(
                        visible: showMore1,
                        child: Container(
                          height: 35,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Weasel maternal dove far the jeepers goodness in the",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "inconsiderately spelled so ubiquitous amused look upon the side",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Withdraw Money to Bank Account",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            splashRadius: 25.0,
                            constraints: BoxConstraints(
                              minHeight: 15,
                              minWidth: 15,
                            ),
                            onPressed: () {
                              setState(() {
                                showMore2 = !showMore2;
                              });
                            },
                            icon: showMore2
                                ? Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 24,
                                    color: Colors.grey,
                                  ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
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
                              "Weasel maternal dove far the jeepers goodness in the",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "inconsiderately spelled so ubiquitous amused look upon the side",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Visibility(
                        visible: showMore2,
                        child: Container(
                          height: 35,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Weasel maternal dove far the jeepers goodness in the",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "inconsiderately spelled so ubiquitous amused look upon the side",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Withdraw Money to Bank Account",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            splashRadius: 25.0,
                            constraints: BoxConstraints(
                              minHeight: 15,
                              minWidth: 15,
                            ),
                            onPressed: () {
                              setState(() {
                                showMore3 = !showMore3;
                              });
                            },
                            icon: showMore3
                                ? Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 24,
                                    color: Colors.grey,
                                  ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
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
                              "Weasel maternal dove far the jeepers goodness in the",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "inconsiderately spelled so ubiquitous amused look upon the side",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Visibility(
                        visible: showMore3,
                        child: Container(
                          height: 35,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Weasel maternal dove far the jeepers goodness in the",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "inconsiderately spelled so ubiquitous amused look upon the side",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
