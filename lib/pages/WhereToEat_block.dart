import 'package:flutter/material.dart';

var fontSizeBig = 16.0;
var fontSizeMedium = 12.0;
var space1 = 30.0;
var space2 = 10.0;
var space3 = 50.0;
var checkMeat = false;
var checkPizza = false;
var checkBurgers = false;
var checkRolls = false;
var checkShaurma = false;
var check01 = false;
var check12 = false;
var check23 = false;
var check34 = false;
var check45 = false;

class WhereToEat extends StatefulWidget {
  const WhereToEat({super.key});

  @override
  State<WhereToEat> createState() => _WhereToEatState();
}

class _WhereToEatState extends State<WhereToEat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                    value: checkMeat,
                    activeColor: Colors.orange,
                    onChanged: (bool? val) {
                      setState(() {
                        checkMeat = val!;
                      });
                    },
                    checkColor: Colors.black),
                SizedBox(
                  width: space2,
                ),
                Text("Мясо"),
                SizedBox(
                  width: space1,
                ),
                Checkbox(
                    value: checkPizza,
                    activeColor: Colors.orange,
                    onChanged: (bool? val) {
                      setState(() {
                        checkPizza = val!;
                      });
                    },
                    checkColor: Colors.black),
                SizedBox(
                  width: space2,
                ),
                Text("Пицца"),
                SizedBox(
                  width: space1,
                ),
                Checkbox(
                    value: checkBurgers,
                    activeColor: Colors.orange,
                    onChanged: (bool? val) {
                      setState(() {
                        checkBurgers = val!;
                      });
                    },
                    checkColor: Colors.black),
                SizedBox(
                  width: space2,
                ),
                Text("Бургеры"),
                SizedBox(
                  width: space1,
                ),
                Checkbox(
                    value: checkRolls,
                    activeColor: Colors.orange,
                    onChanged: (bool? val) {
                      setState(() {
                        checkRolls = val!;
                      });
                    },
                    checkColor: Colors.black),
                SizedBox(
                  width: space2,
                ),
                Text("Роллы и суши"),
                SizedBox(
                  width: space1,
                ),
                Checkbox(
                    value: checkShaurma,
                    activeColor: Colors.orange,
                    onChanged: (bool? val) {
                      setState(() {
                        checkShaurma = val!;
                      });
                    },
                    checkColor: Colors.black),
                SizedBox(
                  width: space2,
                ),
                Text("Шаурма"),
                SizedBox(
                  width: space1,
                ),
                Text("Ещё"),
                SizedBox(
                  width: 1,
                ),
                DropdownButton<String>(
                  items: <String>['A', 'B', 'C', 'D'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
                SizedBox(
                  width: 80,
                ),
              ],
            ),
            Expanded(child: Container()),
            Row(
              children: [
                Container(
                  width: 450,
                  height: 35,
                  child: TextField(
                    style: TextStyle(fontSize: 16),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(height: 2.5),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.grey.shade400, width: 2)),
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
                  width: 150,
                ),
              ],
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 150,
            ),
            DropdownButton<String>(
              hint: Text("Доставка"),
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            SizedBox(
              width: space3,
            ),
            DropdownButton<String>(
              hint: Text("Категория"),
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            SizedBox(
              width: space3,
            ),
            DropdownButton<String>(
              hint: Text("Кухня"),
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            SizedBox(
              width: 100,
            ),
            Checkbox(
                value: check01,
                activeColor: Colors.orange,
                onChanged: (bool? val) {
                  setState(() {
                    check01 = val!;
                  });
                },
                checkColor: Colors.black),
            SizedBox(
              width: space2,
            ),
            Text("0-1"),
            SizedBox(
              width: space2,
            ),
            Image.asset(
              "../assets/fire_empty.png",
            ),
            SizedBox(
              width: space1,
            ),
            Checkbox(
                value: check12,
                activeColor: Colors.orange,
                onChanged: (bool? val) {
                  setState(() {
                    check12 = val!;
                  });
                },
                checkColor: Colors.black),
            SizedBox(
              width: space2,
            ),
            Text("1-2"),
            SizedBox(
              width: space2,
            ),
            Image.asset(
              "../assets/fire_semiempty1.png",
            ),
            SizedBox(
              width: space1,
            ),
            Checkbox(
                value: check23,
                activeColor: Colors.orange,
                onChanged: (bool? val) {
                  setState(() {
                    check23 = val!;
                  });
                },
                checkColor: Colors.black),
            SizedBox(
              width: space2,
            ),
            Text("2-3"),
            SizedBox(
              width: space2,
            ),
            Image.asset(
              "../assets/fire_semiempty2.png",
            ),
            SizedBox(
              width: space1,
            ),
            Checkbox(
                value: check34,
                activeColor: Colors.orange,
                onChanged: (bool? val) {
                  setState(() {
                    check34 = val!;
                  });
                },
                checkColor: Colors.black),
            SizedBox(
              width: space2,
            ),
            Text("3-4"),
            SizedBox(
              width: space2,
            ),
            Image.asset(
              "../assets/fire_semiempty3.png",
            ),
            SizedBox(
              width: space1,
            ),
            Checkbox(
                value: check45,
                activeColor: Colors.orange,
                onChanged: (bool? val) {
                  setState(() {
                    check45 = val!;
                  });
                },
                checkColor: Colors.black),
            SizedBox(
              width: space2,
            ),
            Text("4-5"),
            SizedBox(
              width: space2,
            ),
            Image.asset(
              "../assets/Vector.png",
            ),
            SizedBox(
              width: space1,
            ),
            Container(
              width: 190,
              height: 35,
              child: ElevatedButton(
                // ignore: prefer_const_constructors
                child: Text(
                  "Сбросить фильтр",
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                        color: Colors.orangeAccent.shade200,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        SizedBox(
          width: 100,
        ),
        Container(
            width: MediaQuery.of(context).size.width - 200,
            height: 750,
            padding: EdgeInsets.only(right: 20, left: 20, top: 15),
            child: GridView.count(
              childAspectRatio: (300 / 120), //width/height
              primary: false,
              padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 40), //const EdgeInsets.all(20),
              crossAxisSpacing: 20,
              mainAxisSpacing: 48,
              crossAxisCount: 3,
              children: <Widget>[
                WhereToEatCard(),
                WhereToEatCard(),
                WhereToEatCard(),
                WhereToEatCard(),
                WhereToEatCard(),
                WhereToEatCard(),
                WhereToEatCard(),
                WhereToEatCard(),
                WhereToEatCard(),
                WhereToEatCard(),
                WhereToEatCard(),
                WhereToEatCard(),
              ],
            )),
      ],
    );
  }
}

class WhereToEatCard extends StatelessWidget {
  const WhereToEatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: IntrinsicHeight(
            child: Row(children: [
      Card(
        color: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            side: BorderSide(width: 5, color: Colors.transparent)),
        child: Container(
          width: 166,
          height: 166,
          child: Column(
            children: [],
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
        width: 200,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Seller",
                style: TextStyle(
                    fontSize: fontSizeBig, fontWeight: FontWeight.bold),
              ),
              Container(
                  padding: EdgeInsets.only(top: 3),
                  child: Text("web-site.ru",
                      style: TextStyle(fontSize: fontSizeMedium))),
              Container(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                    "This is just an examle of big texafa f asda sads aas agg asfdads aag agsag as sat",
                    style: TextStyle(fontSize: fontSizeMedium),
                    softWrap: true,
                    textDirection: TextDirection.ltr),
              ),
              Expanded(child: SizedBox()),
              Row(
                children: [
                  Text('3.6'),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "../assets/Vector.png",
                        ),
                        Image.asset(
                          "../assets/Vector.png",
                        ),
                        Image.asset(
                          "../assets/Vector.png",
                        ),
                        Image.asset(
                          "../assets/fire_empty.png",
                        ),
                        Image.asset(
                          "../assets/fire_empty.png",
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ]),
      )
    ])));
  }
}
