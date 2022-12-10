import 'package:flutter/material.dart';
import 'package:food_market/pages/ShtoKushats_block.dart';

class WhatToEat extends StatefulWidget {
  const WhatToEat({super.key});

  @override
  State<WhatToEat> createState() => _nameState();
}

class _nameState extends State<WhatToEat> {
  final List<String> categoryEat = [
    "Салаты",
    "Закуски",
    "Супы",
    "Мясо",
    "Рыба",
    "Гарниры",
    "Пицца",
    "Бургеры",
    "Салаты",
    "Десерты",
    "Шаурма",
    "Напитки"
  ];
  final List<String> categoryKuxhi = [
    "Азиатская",
    "Итальянская",
    "Грузинская",
    "Восточная",
    "Русская",
    "Домашняя",
    "Вегетерианская"
  ];

  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 200),
                    width: 200,
                    child: Text(
                      'Категории',
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 200),
                      width: 200,
                      height: 440,
                      child: ListView.builder(
                        itemBuilder: ((BuildContext, index) {
                          return Text(
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Open Sans",
                                height: 1.8,
                              ),
                              categoryEat[index]);
                        }),
                        itemCount: categoryEat.length,
                      )),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 190),
                    width: 240,
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
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 200),
                    width: 200,
                    child: Text(
                      'Кухня',
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 200),
                      width: 200,
                      height: 260,
                      child: ListView.builder(
                        itemBuilder: ((BuildContext, index) {
                          return Text(
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Open Sans",
                                height: 1.8,
                              ),
                              categoryKuxhi[index]);
                        }),
                        itemCount: categoryKuxhi.length,
                      )),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 190),
                    width: 240,
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
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 100),
                        child: Text(
                          'Рейтинг',
                          style: TextStyle(
                            fontSize: 26,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 160,
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Checkbox(
                                    checkColor: Colors.black,
                                    activeColor: Colors.orange,
                                    value: this.valuesecond,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        this.valuesecond = value!;
                                      });
                                    },
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r2.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r2.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r2.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r2.png",
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Checkbox(value: false, onChanged: null),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r2.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r2.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r2.png",
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Checkbox(value: false, onChanged: null),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r2.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r2.png",
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Checkbox(value: false, onChanged: null),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r2.png",
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Checkbox(value: false, onChanged: null),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                  Image.asset(
                                    "../assets/Vector-r1.png",
                                  ),
                                ],
                              ),
                            ]),
                            margin: EdgeInsets.only(left: 183),
                            width: 200,
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 195),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Сбросить фильтр",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.orangeAccent.shade200),
                                        minimumSize: MaterialStateProperty.all(
                                            const Size(200, 40)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            //RIGHT
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 1200,
                    height: 50,
                    //padding: EdgeInsets.symmetric(horizontal: 50),
                    //POISK
                    //margin: EdgeInsets.only(left: 500),
                    // width: 1000,
                    // height: 35,
                    child: TextField(
                      style: TextStyle(fontSize: 16),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(height: 2.5),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2)),
                          hintText: "Поиск"),
                    ),
                  ),
                  Icon(Icons.search),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 1200,
                    height: 1100,
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.all(40),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 8,
                        mainAxisExtent: 200,
                      ),
                      itemCount: 22,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ShtoKushats(),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
