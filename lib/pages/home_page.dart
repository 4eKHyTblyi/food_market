import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_market/pages/Footer_block.dart';
import 'package:food_market/pages/HistoryBlock_block.dart';
import 'package:food_market/pages/WhatToEat_block.dart';
import 'package:food_market/pages/YouMayLikeIt_block.dart';
import 'package:food_market/pages/MyCustomAppBar.dart';
import 'package:food_market/pages/WhereToEat_block.dart';
import 'Maps_block.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var mainAxisAlignment = MainAxisAlignment;

    return Scaffold(
      appBar: MyCustomAppBar(
        key: null,
        height: 50,
      ),

      //BODY
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 100.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            returnBannerInfo(),

            SizedBox(
              height: 80,
            ),

            returnHistory(),

            SizedBox(
              height: 20,
            ),

            ConstrainedBox(
              constraints:
                  const BoxConstraints.expand(width: 1000, height: 200),
              child: const HistoryBlock(),
            ),

            SizedBox(
              height: 20,
            ),

            returnYouCanLikeIt(),

            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),

            YouMayLikeIt(),

            SizedBox(
              height: 20,
            ),
            //что хотите кушать
            returnKushts(),

            SizedBox(
              height: 20,
            ),

            WhatToEat(),

            SizedBox(
              height: 20,
            ),
            //линия "Где вы хотите кушать?"
            whereToEatLine(),

            SizedBox(
              height: 20,
            ),
            //сетка где вы хотите кушать
            WhereToEat(),

            SizedBox(
              height: 20,
            ),

            returnMestaKarta(),

            SizedBox(
              height: 18,
            ),

            Maps(),

            SizedBox(
              height: 150,
            ),

            OurFooter(),
          ],
        ),
      ),
    );
  }
}

returnYouCanLikeIt() {
  return Row(
    children: [
      Container(
        width: 200,
        child: Divider(
          indent: 10,
          endIndent: 35.0,
          thickness: 5.0,
          height: 5.0,
          color: Colors.orange,
        ),
      ),
      Expanded(
        flex: 0,
        child: Text(
          textAlign: TextAlign.left,
          'Это может вам понравится',
          style: TextStyle(
            fontSize: 26,
            fontFamily: 'Rubik',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: Divider(
          indent: 35.0,
          endIndent: 10,
          thickness: 5.0,
          height: 5.0,
          color: Colors.orange,
        ),
      ),
    ],
  );
}

whereToEatLine() {
  return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Row(
          children: [
            Container(
              width: 200,
              child: Divider(
                indent: 10,
                endIndent: 35.0,
                thickness: 5.0,
                height: 5.0,
                color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 0,
              child: Text(
                textAlign: TextAlign.left,
                'Где вы хотите кушать?',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Divider(
                indent: 35.0,
                endIndent: 10,
                thickness: 5.0,
                height: 5.0,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ]));
}

returnKartochka() {
  return Container(
    width: 300,
    height: 100,
    child: Column(
      children: [
        Image.asset("../assets/logo.png"),
        Row(
          children: [
            Icon(Icons.fire_extinguisher),
            Text("data"),
            Icon(Icons.person),
          ],
        ),
      ],
    ),
  );
}

returnHistory() {
  return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Row(
          children: [
            Container(
              width: 200,
              child: Divider(
                indent: 10,
                endIndent: 35.0,
                thickness: 5.0,
                height: 5.0,
                color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 0,
              child: Text(
                textAlign: TextAlign.left,
                'Истории',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Divider(
                indent: 35.0,
                endIndent: 10,
                thickness: 5.0,
                height: 5.0,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ]));
}

returnBannerInfo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Card(
        color: Color(0xFFEAF3FE),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(width: 2, color: Colors.transparent)),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Какой-то приветственный баннер?',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Rubik",
                  )),
            ],
          ),
          width: 1200,
          height: 270,
        ),
      ),
    ],
  );
}

returnKushts() {
  return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Row(
          children: [
            Container(
              width: 200,
              child: Divider(
                indent: 10,
                endIndent: 35.0,
                thickness: 5.0,
                height: 5.0,
                color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 0,
              child: Text(
                textAlign: TextAlign.left,
                'Что вы хотите кушать?',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Divider(
                indent: 35.0,
                endIndent: 10,
                thickness: 5.0,
                height: 5.0,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ]));
}

returnMestaKarta() {
  return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Row(
          children: [
            Container(
              width: 200,
              child: Divider(
                indent: 10,
                endIndent: 35.0,
                thickness: 5.0,
                height: 5.0,
                color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 0,
              child: Text(
                textAlign: TextAlign.left,
                'Места на карте',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Divider(
                indent: 35.0,
                endIndent: 10,
                thickness: 5.0,
                height: 5.0,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ]));
}

returnLine() {
  return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Row(
          children: [
            Container(
              //margin: EdgeInsets.only(top: 500, right: 90),
              width: 300,
              child: Divider(
                indent: 10,
                endIndent: 35.0,
                thickness: 3.0,
                height: 3.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ]));
}
