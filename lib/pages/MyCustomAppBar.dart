import 'package:flutter/material.dart';

const spaceBetween = 15.0;
const innerSmallSpace = 5.0;

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const MyCustomAppBar({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.black12,
      backgroundColor: Colors.white,
      titleSpacing: 25.0,
      title: Row(
        children: [
          Image.asset(
            "../assets/logo.png",
            //fit: BoxFit.cover,
            height: 50,
          ),
          SizedBox(
            width: spaceBetween,
          ),
          Icon(
            Icons.language,
            color: Colors.black,
          ),
          SizedBox(
            width: innerSmallSpace,
          ),
          Text(
            "Язык",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Open Sans',
            ),
          ),
          SizedBox(
            width: spaceBetween,
          ),
          Icon(
            Icons.location_on_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: innerSmallSpace,
          ),
          Text(
            "Чебоксары",
            style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Open Sans',
                decoration: TextDecoration.underline),
          ),
          SizedBox(
            width: spaceBetween,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Хотите стать продавцом?",
              style: TextStyle(fontSize: 12),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Colors.orangeAccent.shade200),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 80,
          ),
          Container(
            width: 350,
            height: 35,
            child: TextField(
              style: TextStyle(fontSize: 16),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  hintStyle: TextStyle(height: 2.5),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Colors.orangeAccent, width: 2)),
                  hintText: "Поиск"),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 70,
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            Icon(
              Icons.mail,
              color: Colors.black,
            ),
            SizedBox(
              width: innerSmallSpace,
            ),
            Text(
              "Сообщения",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Open Sans',
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: spaceBetween,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            SizedBox(
              width: innerSmallSpace,
            ),
            Text(
              "Корзина",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Open Sans',
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: spaceBetween,
            ),
            Icon(
              Icons.account_box,
              color: Colors.black,
            ),
            SizedBox(
              width: innerSmallSpace,
            ),
            Text(
              "Профиль",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Open Sans',
              ),
            ),
          ],
        ),
      ],
      leading: Row(
        children: [],
      ),
      titleTextStyle:
          TextStyle(color: Colors.green, fontFamily: 'Roboto', fontSize: 25),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
