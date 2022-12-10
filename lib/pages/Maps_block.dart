import 'package:flutter/material.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              side: BorderSide(width: 2, color: Colors.grey)),
          child: Container(
            width: 1200,
            height: 270,
            child: Column(
              children: [],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bannet text',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Opens-Sans',
                )),
          ],
        ),
      ],
    );
    ;
  }
}
