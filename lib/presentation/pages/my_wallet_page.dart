// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/presentation/widgets/drawer_widget.dart';

class MyWalletPage extends StatelessWidget {
  const MyWalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerWidget(context),
      appBar: AppBar(
        title: Text("My Wallet"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 10),
              Card(
                margin: EdgeInsets.zero,
                child: Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.transparent,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Balance",
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
                      SizedBox(height: 10),
                      Text(
                        "+\$1,200.00",
                        style: TextStyle(
                          fontSize: 16,
                          color: Constant.kGreenColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Latest Transactions".toUpperCase(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Constant.kGreenColor,
                      child: Container(
                        height: 75,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Income",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "\$345.00",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 0.5,
                      child: Container(
                        height: 75,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Spend",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "\$345.00",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
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
              Card(
                child: Container(
                  height: 120,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  "TransactionHistory".toUpperCase(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                // color: Colors.lightBlue.shade50,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
