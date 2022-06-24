// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../constants.dart';

class YourDetailPage extends StatefulWidget {
  const YourDetailPage({Key? key}) : super(key: key);

  @override
  State<YourDetailPage> createState() => _YourDetailPageState();
}

class _YourDetailPageState extends State<YourDetailPage> {
  List<String> gender = ["Mr.", "Ms."];
  List<String> city = ["Norwegia", "City2"];
  String selectedGender = "Mr.";
  String selectedCity = "Norwegia";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("Your Detail"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: 120,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "Mexico",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Cancun Vacation Break",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.timelapse_sharp,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "3 days",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 40),
                                Icon(
                                  Icons.account_box_sharp,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "10 people",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 165,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 180,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: DropdownButton<String>(
                          items: gender.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              selectedGender = val!;
                            });
                          },
                          value: selectedGender,
                          isExpanded: true,
                          underline: SizedBox(),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 180,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Age",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              height: 165,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Address",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Fill in your full address",
                        suffixIcon: Icon(
                          Icons.location_searching_outlined,
                          color: Colors.blue,
                          size: 16,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: DropdownButton<String>(
                      items: city.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedCity = val!;
                        });
                      },
                      value: selectedCity,
                      isExpanded: true,
                      underline: SizedBox(),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              height: 165,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Contact Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Fill in your phone number",
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Fill in your email",
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        border: InputBorder.none,
                      ),
                    ),
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
                "BOOK THIS TRIP NOW",
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
