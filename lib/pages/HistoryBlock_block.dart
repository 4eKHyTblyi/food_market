import 'package:flutter/material.dart';

class HistoryBlock extends StatefulWidget {
  const HistoryBlock({super.key});

  @override
  State<HistoryBlock> createState() => _HistoryBlockState();
}

class _HistoryBlockState extends State<HistoryBlock> {
  ScrollController scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      height: 275,
      //padding: EdgeInsets.symmetric(horizontal: 20),
      child: Scrollbar(
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            clipBehavior: Clip.hardEdge,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            controller: scroll,
            shrinkWrap: true,
            itemBuilder: (BuildContext, int index) {
              return History();
            }),
      ),
    );
  }
}

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
              side: BorderSide(width: 2, color: Colors.orange)),
          margin: EdgeInsets.only(left: 33),
          child: Card(
            color: Color(0xFFBBC6CF),
            margin: EdgeInsets.all(7),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            child: Container(
              width: 120,
              height: 120,
              child: Column(
                children: [],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 33),
              child: Text('Seller',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Opens-Sans',
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
