// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/presentation/pages/documents_page.dart';
import 'package:real_state_app/presentation/pages/gallery_page.dart';
import 'package:real_state_app/presentation/pages/home_page.dart';
import 'package:real_state_app/presentation/pages/map_page.dart';
import 'package:real_state_app/presentation/pages/plans_page.dart';

Drawer drawerWidget(context) {
  var currentPage = DrawerSection.plans;
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30),
            color: Constant.kGreenColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "name@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          drawerList(context, currentPage),
        ],
      ),
    ),
  );
}

Widget drawerList(context, currentPage) {
  return Column(
    children: [
      menuItem(
        context,
        1,
        'Map',
        Icons.home,
        currentPage == DrawerSection.map ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        2,
        'Home',
        Icons.person,
        currentPage == DrawerSection.home ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        3,
        'Gallery',
        Icons.money,
        currentPage == DrawerSection.gallery ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        4,
        'Plans',
        Icons.send,
        currentPage == DrawerSection.plans ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        5,
        'Documents',
        Icons.card_membership_sharp,
        currentPage == DrawerSection.documents ? true : false,
        currentPage,
      ),
    ],
  );
}

Widget menuItem(context, int id, String title, IconData icon, bool selected,
    var currentPage) {
  return Material(
    child: InkWell(
      onTap: () {
        if (id == 1) {
          currentPage = DrawerSection.map;
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => MapPage(),
              ),
              (route) => false);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => HomePage(),
          //   ),
          // );
        } else if (id == 2) {
          currentPage = DrawerSection.home;
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
              (route) => false);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => ProfilePage(),
          //   ),
          // );
        } else if (id == 3) {
          currentPage = DrawerSection.gallery;
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => GalleryPage(),
              ),
              (route) => false);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => AddMoneyPage(),
          //   ),
          // );
        } else if (id == 4) {
          currentPage = DrawerSection.plans;
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => PlansPage(),
              ),
              (route) => false);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => SendMoneyPageOne(),
          //   ),
          // );
        } else if (id == 5) {
          currentPage = DrawerSection.documents;
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => BuyGiftCard(),
          //     ),
          //     (route) => false);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DocumentsPage(),
            ),
          );
        } else if (id == 6) {
          // currentPage = DrawerSection.createAVirtualCard;
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => VirtualCardPage(),
          //     ),
          //     (route) => false);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => VirtualCardPage(),
          //   ),
          // );
        }
        // else if (id == 7) {
        //   currentPage = DrawerSection.transactions;
        // }
        else if (id == 8) {
          // currentPage = DrawerSection.settings;
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => SettingPageOne(),
          //     ),
          //     (route) => false);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => SettingPageOne(),
          //   ),
          // );
        } else if (id == 9) {
          // currentPage = DrawerSection.supportCentre;
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => SupportCentrePageOne(),
          //     ),
          //     (route) => false);

          //* uncomment this
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => SupportCentrePageOne(),
          //   ),
          // );
        } else if (id == 10) {
          // currentPage = DrawerSection.signOut;
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => VirtualCardPageThird(),
          //     ),
          //     (route) => false);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => VirtualCardPageThird(),
          //   ),
          // );
        }
      },
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

enum DrawerSection {
  map,
  home,
  gallery,
  plans,
  documents,
}
