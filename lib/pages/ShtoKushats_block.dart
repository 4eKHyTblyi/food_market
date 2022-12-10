import 'package:flutter/material.dart';

class ShtoKushats extends StatefulWidget {
  const ShtoKushats({super.key});

  @override
  State<ShtoKushats> createState() => _ShtoKushatsState();
}

class _ShtoKushatsState extends State<ShtoKushats> {
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
          child: Container(
            width: 224,
            height: 180,
            child: Column(
              children: [
                Expanded(child: Container()),
                Card(
                  margin: EdgeInsets.all(0),
                  color: Color.fromARGB(100, 30, 33, 43),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: Container(
                    width: 224,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 0),
                          child: Image.asset(
                            "../assets/Ellipse.png",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 9,
                              ),
                              Text('Meal',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: 'Opens-Sans',
                                  )),
                              Text('Seller',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Opens-Sans',
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 75,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 0),
                          child: Text('5.0',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Opens-Sans',
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 0),
                          child: Image.asset(
                            "../assets/Vector.png",
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
      ],
    );
  }
}
