// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_state_app/presentation/widgets/drawer_widget.dart';

import '../../constants.dart';

class TwoText {
  final String number;
  final String name;

  TwoText({required this.number, required this.name});
}

List<TwoText> twoText = [
  TwoText(number: "359", name: "Transactions"),
  TwoText(number: "10,289.00", name: "Balance"),
  TwoText(number: "\$431.00", name: "Spent"),
];

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  int item = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerWidget(context),
      appBar: AppBar(
        title: Text("My Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.zero,
              elevation: 0.0,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "San Fransisco, CA",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Card(
              elevation: 0.0,
              child: Column(
                children: [
                  SizedBox(height: 20),
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
                              // item == index
                              //     ? Container(
                              //         height: 3,
                              //         width: double.infinity,
                              //         color: Constant.kGreenColor,
                              //       )
                              //     : SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Bank Account".toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Card(
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Icon(
                                Icons.account_balance_wallet_rounded,
                                size: 55,
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "Account Name",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "0873690386",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Switch Account",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Constant.kGreenColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Credit Cards".toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Icon(
                                Icons.credit_card,
                                size: 55,
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "VISA",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "9827-XXXX   12/20  399",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Your Name",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Last Transactions".toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      height: 70,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recipient's Name",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "-\$345,00",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Today at 12:00 PM",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      height: 70,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sender's Name",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "+\$120,00",
                                style: TextStyle(
                                  color: Constant.kGreenColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Today at 12:00 PM",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(height: 10),
                  Card(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      height: 70,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sender's Name",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "+\$120,00",
                                style: TextStyle(
                                  color: Constant.kGreenColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Today at 12:00 PM",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      height: 70,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recipient's Name",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "-\$345,00",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Today at 12:00 PM",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Constant.kGreenColor,
                    ),
                    child: Text(
                      "Request Money",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
