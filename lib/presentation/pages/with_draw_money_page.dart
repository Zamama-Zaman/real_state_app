// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_state_app/presentation/widgets/drawer_widget.dart';

import '../../constants.dart';

class WithDarwMoneyPage extends StatelessWidget {
  const WithDarwMoneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerWidget(context),
      appBar: AppBar(
        title: Text("Withdraw Money"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 10),
            Card(
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
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.bottomLeft,
              child: Text(
                "With Draw Money to Bank Account:".toUpperCase(),
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
            Spacer(),
            Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Constant.kGreenColor,
              ),
              child: Text(
                "Withdraw Amount",
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
    );
  }
}
