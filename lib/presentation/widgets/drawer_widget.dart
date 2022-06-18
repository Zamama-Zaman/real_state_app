// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/presentation/pages/account_page.dart';
import 'package:real_state_app/presentation/pages/activity_page.dart';
import 'package:real_state_app/presentation/pages/add_back_account_page.dart';
import 'package:real_state_app/presentation/pages/add_card_page.dart';
import 'package:real_state_app/presentation/pages/campaign_page.dart';
import 'package:real_state_app/presentation/pages/documents_page.dart';
import 'package:real_state_app/presentation/pages/faq_page.dart';
import 'package:real_state_app/presentation/pages/gallery_page.dart';
import 'package:real_state_app/presentation/pages/dashboard_page.dart';
import 'package:real_state_app/presentation/pages/guide_profile_page.dart';
import 'package:real_state_app/presentation/pages/home_page.dart';
import 'package:real_state_app/presentation/pages/map_page.dart';
import 'package:real_state_app/presentation/pages/my_profile_page.dart';
import 'package:real_state_app/presentation/pages/my_wallet_page.dart';
import 'package:real_state_app/presentation/pages/plans_page.dart';
import 'package:real_state_app/presentation/pages/properties_page.dart';
import 'package:real_state_app/presentation/pages/send_money_page.dart';
import 'package:real_state_app/presentation/pages/transaction_successfully_page.dart';
import 'package:real_state_app/presentation/pages/wallet_page.dart';
import 'package:real_state_app/presentation/pages/with_draw_money_page.dart';
import 'package:real_state_app/presentation/pages/your_detail_page.dart';

Drawer drawerWidget(context) {
  var currentPage = DrawerSection.compaign;
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
                      Icons.arrow_drop_down,
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
        'Home',
        Icons.home,
        currentPage == DrawerSection.compaign ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        2,
        'Compaign',
        Icons.dashboard,
        currentPage == DrawerSection.home ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        3,
        'Map',
        Icons.map,
        currentPage == DrawerSection.map ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        4,
        'My Places',
        Icons.place,
        currentPage == DrawerSection.myPlaces ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        5,
        'Traffic',
        Icons.traffic,
        currentPage == DrawerSection.traffic ? true : false,
        currentPage,
      ),
      Divider(),
      menuItem(
        context,
        6,
        'Routes',
        Icons.location_on_rounded,
        currentPage == DrawerSection.routes ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        7,
        'Settings',
        Icons.settings,
        currentPage == DrawerSection.settings ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        8,
        'Help',
        Icons.help,
        currentPage == DrawerSection.help ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        9,
        'Send Feedback',
        Icons.send,
        currentPage == DrawerSection.sendFeedback ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        10,
        "FAQ's",
        Icons.send,
        currentPage == DrawerSection.faq ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        11,
        'Your Detail',
        Icons.send,
        currentPage == DrawerSection.yourDetail ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        12,
        'Wallet',
        Icons.send,
        currentPage == DrawerSection.wallet ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        13,
        'Send Money',
        Icons.send,
        currentPage == DrawerSection.sendMoney ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        14,
        'Account',
        Icons.send,
        currentPage == DrawerSection.account ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        15,
        'Add Card',
        Icons.send,
        currentPage == DrawerSection.addCard ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        16,
        'Add Bank Account',
        Icons.send,
        currentPage == DrawerSection.addBankAccount ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        17,
        'My Wallet',
        Icons.send,
        currentPage == DrawerSection.myWallet ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        18,
        'My Profile',
        Icons.send,
        currentPage == DrawerSection.myProfile ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        19,
        'Withdraw Money',
        Icons.send,
        currentPage == DrawerSection.withdrawMoney ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        20,
        'Plan',
        Icons.send,
        currentPage == DrawerSection.plan ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        21,
        'Transection Successfull',
        Icons.send,
        currentPage == DrawerSection.transectionSuccessfull ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        22,
        'Documents',
        Icons.send,
        currentPage == DrawerSection.documents ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        23,
        'Properties',
        Icons.send,
        currentPage == DrawerSection.properties ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        24,
        'Guide Profile',
        Icons.send,
        currentPage == DrawerSection.guideProfile ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        25,
        'Activity',
        Icons.send,
        currentPage == DrawerSection.activity ? true : false,
        currentPage,
      ),
      menuItem(
        context,
        26,
        'Gallery',
        Icons.send,
        currentPage == DrawerSection.gallery ? true : false,
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
          currentPage = DrawerSection.home;
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
              (route) => false);
        } else if (id == 2) {
          currentPage = DrawerSection.compaign;
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => CompaignPage(),
              ),
              (route) => false);
        } else if (id == 3) {
          currentPage = DrawerSection.map;
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => MapPage(),
          //     ),
          //     (route) => false);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MapPage(),
            ),
          );
        } else if (id == 4) {
          currentPage = DrawerSection.myPlaces;
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => MyPlace(),
          //     ),
          //     (route) => false);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => SendMoneyPageOne(),
          //   ),
          // );
        } else if (id == 5) {
          currentPage = DrawerSection.traffic;
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => DocumentsPage(),
          //   ),
          // );
        } else if (id == 6) {
          currentPage = DrawerSection.routes;
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
        else if (id == 7) {
          currentPage = DrawerSection.settings;
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
        } else if (id == 8) {
          currentPage = DrawerSection.help;
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
        } else if (id == 9) {
          currentPage = DrawerSection.sendFeedback;
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => SendF(),
          //     ),
          //     (route) => false);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => VirtualCardPageThird(),
          //   ),
          // );
        } else if (id == 10) {
          currentPage = DrawerSection.faq;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FAQPage(),
            ),
          );
        } else if (id == 11) {
          currentPage = DrawerSection.yourDetail;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => YourDetailPage(),
            ),
          );
        } else if (id == 12) {
          currentPage = DrawerSection.wallet;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WalletPage(),
            ),
          );
        } else if (id == 13) {
          currentPage = DrawerSection.sendMoney;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SendMoneyPage(),
            ),
          );
        } else if (id == 14) {
          currentPage = DrawerSection.account;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AccountPage(),
            ),
          );
        } else if (id == 15) {
          currentPage = DrawerSection.addCard;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddCardPage(),
            ),
          );
        } else if (id == 16) {
          currentPage = DrawerSection.addBankAccount;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddBackAccountPage(),
            ),
          );
        } else if (id == 17) {
          currentPage = DrawerSection.myWallet;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyWalletPage(),
            ),
          );
        } else if (id == 18) {
          currentPage = DrawerSection.myProfile;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyProfilePage(),
            ),
          );
        } else if (id == 19) {
          currentPage = DrawerSection.withdrawMoney;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WithDarwMoneyPage(),
            ),
          );
        } else if (id == 20) {
          currentPage = DrawerSection.plan;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlansPage(),
            ),
          );
        } else if (id == 21) {
          currentPage = DrawerSection.transectionSuccessfull;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TransactionSuccessfullPage(),
            ),
          );
        } else if (id == 22) {
          currentPage = DrawerSection.documents;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DocumentsPage(),
            ),
          );
        } else if (id == 23) {
          currentPage = DrawerSection.properties;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PropertiesPage(),
            ),
          );
        } else if (id == 24) {
          currentPage = DrawerSection.guideProfile;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GuideProfilePage(),
            ),
          );
        } else if (id == 25) {
          currentPage = DrawerSection.activity;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ActivityPage(),
            ),
          );
        } else if (id == 26) {
          currentPage = DrawerSection.gallery;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GalleryPage(),
            ),
          );
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
  home,
  compaign,
  map,
  myPlaces,
  traffic,
  routes,
  settings,
  help,
  sendFeedback,
  faq,
  yourDetail,
  wallet,
  sendMoney,
  account,
  addCard,
  addBankAccount,
  myWallet,
  myProfile,
  withdrawMoney,
  transectionSuccessfull,
  documents,
  properties,
  guideProfile,
  activity,
  gallery,
  plan,
}
