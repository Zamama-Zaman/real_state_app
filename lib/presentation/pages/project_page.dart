// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:real_state_app/presentation/pages/gallery_page.dart';
import 'package:real_state_app/presentation/pages/map_page.dart';

import '../../constants.dart';

class IconText {
  final IconData icon;
  final String name;

  IconText({required this.icon, required this.name});
}

List<IconText> iconText = [
  IconText(icon: Icons.pin_drop, name: "DETAILS"),
  IconText(icon: Icons.person_outline, name: "OWNER"),
  IconText(icon: Icons.comment, name: "COMMENTS"),
];

List<Widget> showWidget = [
  DetailsWidget(),
  OwnerWidget(),
  Center(
    child: Text("Comments"),
  ),
];

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 0.0,
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      // boxShadow: [
                      //   BoxShadow(
                      //     blurRadius: 10.0,
                      //   ),
                      // ],
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
                  Text(
                    "category-sub category",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
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
                    "/ per 6500 Sq.Ft.(650 SYD)",
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
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 2.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 5.0),
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
                ],
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
                itemCount: iconText.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 3.5,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Icon(
                          iconText[index].icon,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text(
                          iconText[index].name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        currentIndex == index
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
            showWidget[currentIndex],
          ],
        ),
      ),
    );
  }
}

class OwnerWidget extends StatelessWidget {
  const OwnerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Card(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            height: 75,
            width: double.infinity,
            color: Colors.transparent,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Hosted by ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "Ludwing Beethoven",
                            style: TextStyle(
                              color: Constant.kGreenColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Member Since July 2013",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          // SizedBox(width: 10),
                          CircularPercentIndicator(
                            radius: 45.0,
                            lineWidth: 5.0,
                            percent: 0.75,
                            center: Text("75%"),
                            progressColor: Constant.kGreenColor,
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
                                  color: Constant.kGreenColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          CircularPercentIndicator(
                            radius: 45.0,
                            lineWidth: 5.0,
                            percent: 0.50,
                            center: Text("50%"),
                            progressColor: Constant.kGreenColor,
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
                                  color: Constant.kGreenColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          // SizedBox(width: 0),
                          CircularPercentIndicator(
                            radius: 45.0,
                            lineWidth: 5.0,
                            percent: 0.89,
                            center: Text("89%"),
                            progressColor: Constant.kGreenColor,
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
                                  color: Constant.kGreenColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 27),
                  Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          CircularPercentIndicator(
                            radius: 45.0,
                            lineWidth: 5.0,
                            percent: 0.80,
                            center: Text("80%"),
                            progressColor: Constant.kGreenColor,
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
                                  color: Constant.kGreenColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Card(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 10),
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
                margin: EdgeInsets.symmetric(horizontal: 10),
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
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Read more about the Project",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward,
                          color: Constant.kGreenColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Projects",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GalleryPage(),
                    ),
                  );
                },
                child: Text(
                  "VIEW ALL",
                  style: TextStyle(
                    fontSize: 14,
                    color: Constant.kGreenColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            height: 235,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 3,
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
                      child: Text("Product Name \nname"),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: 16,
                          ),
                          Text(
                            "name",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Comments",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              Text(
                "VIEW ALL",
                style: TextStyle(
                  fontSize: 14,
                  color: Constant.kGreenColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Column(
          children: [
            Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.transparent,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Christina"),
                            SizedBox(height: 5),
                            Text(
                              "14 June 2017",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 35,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
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
                ],
              ),
            ),
            Divider(thickness: 1, height: 0),
            Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.transparent,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Tony Ramirez"),
                            SizedBox(height: 5),
                            Text(
                              "14 June 2017",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 35,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
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
                          "inconsiderately spelled so ubiquitous amused to have something more",
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
                ],
              ),
            ),
            Divider(thickness: 1, height: 0),
            Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.transparent,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Gabriella Madelaine"),
                            SizedBox(height: 5),
                            Text(
                              "14 June 2017",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 35,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
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
                          "inconsiderately spelled so ubiquitous amused looked upon us",
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
      ],
    );
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Container(
          height: 120,
          margin: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.transparent,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              child: Card(
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width / 3.5,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Community\nPark",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Card(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "DESCRIPTION",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 10),
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
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Read more about the Project",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward,
                          color: Constant.kGreenColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(thickness: 1),
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
              SizedBox(height: 10),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.bottomLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Location",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MapPage(),
                      ),
                    );
                  },
                  child: Icon(Icons.location_on_outlined)),
            ],
          ),
        ),
        SizedBox(height: 20),
        Card(
          elevation: 0.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "58 Sailfish Dr, Manteo, NC 28434, USA",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearby",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              Text(
                "VIEW ALL",
                style: TextStyle(
                  fontSize: 14,
                  color: Constant.kGreenColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
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
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "LAYOUT",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                    size: 16,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "3D VIEW",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey,
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
    );
  }
}
