import 'package:flutter/material.dart';

class OurFooter extends StatefulWidget {
  const OurFooter({super.key});

  @override
  State<OurFooter> createState() => _OurFooterState();
}

class _OurFooterState extends State<OurFooter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          color: Color.fromRGBO(255, 223, 189, 1),
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                  height: 200,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "../assets/logoFooter.png",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Row(
                      children: [
                        Text('Продавайте на “Хочу кушать"',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Rubik',
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text('Пресс-центр',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Rubik',
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text('Условия акций',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Rubik',
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text('Контакты',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Rubik',
                              )),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                //2-ая колонка
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 65, left: 220),
                      child: Text('Мы в соцсетях',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 220),
                          child: Image.network(
                            "https://firebasestorage.googleapis.com/v0/b/foodmarket-21.appspot.com/o/telega.png?alt=media&token=9c75b826-aca1-4dfb-93b5-ed51e84d44b1",
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Image.network(
                            "https://firebasestorage.googleapis.com/v0/b/foodmarket-21.appspot.com/o/vk.png?alt=media&token=640fc245-bdf7-4d72-9ae5-38e194b74ed1",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 65, left: 220),
                      child: Text('Мобильные устройства',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 220),
                          child: Image.asset(
                            "../assets/android.png",
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 220),
                          child: Image.asset(
                            "../assets/ios.png",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
        ),
      ],
    );
    ;
  }
}
