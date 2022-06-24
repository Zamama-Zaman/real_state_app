// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_state_app/presentation/widgets/drawer_widget.dart';

import '../../constants.dart';

class TwoText {
  final String number;
  final String name;

  TwoText({required this.number, required this.name});
}

List<TwoText> twoText2 = [
  TwoText(number: "By Squre Feet", name: ""),
  TwoText(number: "By Target Amount", name: ""),
];

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  int item = 0;
  bool yesNoSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerWidget(context),
      appBar: AppBar(
        title: Text("Wallet"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.transparent,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Make An Investment".toUpperCase(),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Deposit Amount",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "\$1,482,00",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Enter Amount Between 15000 and 1 Cr",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.bottomLeft,
              child: Text(
                "RETURN CALCULATOR",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 90,
              color: Colors.transparent,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: twoText2.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      item = index;
                    });
                  },
                  child: Card(
                    color:
                        item == index ? Colors.lightBlue.shade50 : Colors.white,
                    child: Container(
                      height: 70,
                      width: 200,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 5, right: 10),
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: item == index
                                      ? Constant.kGreenColor
                                      : Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              Text(
                                twoText2[index].number,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 3,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: item == index
                                  ? Constant.kGreenColor
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Card(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Purchasing Squre Feet",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "-\$20,00",
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
                          "Enter Number of Sq. Ft.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Price per Squre Feet",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "+\$55,00",
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
                          "Select Investment Plan",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Payout on meturity",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "+\$125,00",
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
                          "Withdarw of investment returns",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),

            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Re invest payout in systemetic plan",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Switch(
                      value: yesNoSwitch,
                      onChanged: (val) {
                        setState(() {
                          yesNoSwitch = val;
                        });
                      }),
                ],
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                height: 100,
                width: double.infinity,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Invested",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "\$225",
                            style: TextStyle(
                              color: Constant.kGreenColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // VerticalDivider(
                    //   thickness: 2,
                    // ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profit",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "\$10",
                            style: TextStyle(
                              color: Constant.kGreenColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // VerticalDivider(
                    //   thickness: 2,
                    // ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "=",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Current Value",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "\$235",
                            style: TextStyle(
                              color: Constant.kGreenColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              height: 75,
              width: double.infinity,
              color: Colors.transparent,
              child: Column(
                children: [
                  Text(
                    "on maturity, the amount gets automatically credited",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "to get register back account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              height: 75,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Text(
                    "FREQUENTLY ASKED QUESTION",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: Constant.kGreenColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Constant.kGreenColor,
              ),
              child: Text(
                "INVEST NOW IN THIS PROJECTS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  // fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
