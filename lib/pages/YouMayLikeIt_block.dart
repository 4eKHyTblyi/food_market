import 'package:flutter/material.dart';

class YouMayLikeIt extends StatefulWidget {
  const YouMayLikeIt({super.key});

  @override
  State<YouMayLikeIt> createState() => _YouMayLikeItState();
}

class _YouMayLikeItState extends State<YouMayLikeIt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 375,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Scrollbar(
        child: ListView.builder(
            clipBehavior: Clip.hardEdge,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext, int index) {
              return MyStatelessWidget();
            }),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          color: Color(0xFFBBC6CF),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              side: BorderSide(width: 5, color: Colors.transparent)),
          margin: EdgeInsets.only(left: 23),
          child: Container(
            width: 250,
            height: 250,
            child: Column(
              children: [],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 33, right: 10),
              child: Image.asset(
                "../assets/Ellipse.png",
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 9,
                ),
                Text('Meal',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Opens-Sans',
                    )),
                Text('Seller',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Opens-Sans',
                    )),
              ],
            ),
            SizedBox(
              width: 75,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text('5.0',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Opens-Sans',
                  )),
            ),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Image.asset(
                "../assets/Vector.png",
              ),
            ),
          ],
        ),
      ],
    );
  }
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
