import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

class Dolumil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "weigth calculator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'fmobey'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  TextEditingController cap = TextEditingController(text: '');
  TextEditingController uzunluk = TextEditingController(text: '');
  TextEditingController adet = TextEditingController(text: '');
  double _katsayi = 0;
  double toplam = 0;
  double cap1 = 0;
  double uzunluk1 = 0;
  double adet1 = 0;
  double pi = 3.1415926535897932;
  String yazilandeger = "";
  int _hasBeenPressed = -1;
  String _hatacode = "";
  //hesaplama işlemini buraya yapcan kanka
  doAddition() {
    setState(() {
      cap1 = double.parse(cap.text.toString());
      uzunluk1 = double.parse(uzunluk.text.toString());
      adet1 = double.parse(adet.text.toString());
      toplam = (cap1 * cap1 * (pi / 4) * uzunluk1 * adet1 * _katsayi) / 1000000;
      if (toplam > 9999) {
        if (toplam != 0) {
          yazilandeger = ((toplam.round()) / 1000).toString() + " ton";
        }
      } else if (toplam > 500 && toplam < 9999) {
        if (toplam != 0) {
          yazilandeger = toplam.roundToDouble().toString() + " Kg";
        }
      } else if (toplam > 100 && toplam < 500) {
        if (toplam != 0) {
          yazilandeger = (toplam * 1000).round().toString() + " Gr";
        }
      } else if (toplam > 0 && toplam < 100) {
        if (toplam != 0) {
          yazilandeger =
              (toplam * 1000).toStringAsPrecision(2).toString() + " Gr";
        }
      } else if (toplam <= 0) {
        _hatacode = "Please enter a valid value!";
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Colors.deepPurple.shade800,
          title: Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: Image.asset(
                'lib/assets/images/1.png',
                fit: BoxFit.cover,
                height: 50,
                width: 250,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: Image.asset(
                'lib/assets/images/dolumil.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 150.0,
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Iron',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 1
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 7.86;
                              setState(() {
                                _hasBeenPressed = 1;
                              });
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Aluminum',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 2
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 2.72;
                            });
                            setState(() {
                              _hasBeenPressed = 2;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Copper',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 3
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 8.9;
                              _hasBeenPressed = 3;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Bronze',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 4
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 8.7;
                              _hasBeenPressed = 4;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Glass',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 5
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 2.6;
                              _hasBeenPressed = 5;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Zinc',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 6
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 7.2;
                              _hasBeenPressed = 6;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Silver',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 7
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 10.5;
                              _hasBeenPressed = 7;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Chromium',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 8
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 7.1;
                              _hasBeenPressed = 8;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Lead',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 9
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 11.37;
                              _hasBeenPressed = 9;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Nickel',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 10
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 8.85;
                              _hasBeenPressed = 10;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Brass',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 11
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 8.55;
                              _hasBeenPressed = 11;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Polyamide',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 12
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 1.2;
                              _hasBeenPressed = 12;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Pexiglass',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 13
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 1.19;
                              _hasBeenPressed = 13;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Stainless steel',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 14
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 7.95;
                              _hasBeenPressed = 14;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            '6061 Aluminum',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 15
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 2.72;
                              _hasBeenPressed = 15;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            '7005 Aluminum',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 16
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 0.00617;
                              _hasBeenPressed = 16;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            '7020 Aluminum',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 17
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 2.8;
                              _hasBeenPressed = 17;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            '7075 Aluminum',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 18
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 2.8;
                              _hasBeenPressed = 18;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Graphite',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 19
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 2.1;
                              _hasBeenPressed = 19;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Cast Steel',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 20
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 7.2;
                              _hasBeenPressed = 20;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'DKP Sheet',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 21
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 8;
                              _hasBeenPressed = 21;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Tungsten',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 22
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 19.22;
                              _hasBeenPressed = 22;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lime[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          child: Text(
                            'Fiber',
                            style: TextStyle(
                              fontSize: 24,
                              color: _hasBeenPressed != 23
                                  ? Colors.black54
                                  : Colors.red,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lime,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            setState(() {
                              _katsayi = 1.4;
                              _hasBeenPressed = 23;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
                ///////////////////// ısaret
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
                controller: cap,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Diameter(mm) :'),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: uzunluk,
              decoration: InputDecoration(labelText: 'Length(mm) :'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: adet,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'How many? :'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              _hatacode,
              style: TextStyle(
                  fontSize: 18, color: Colors.red, fontWeight: FontWeight.w300),
            ),
          ),
          TextButton(
            onPressed: () {
              if (cap.text == "" ||
                  uzunluk.text == "" ||
                  adet.text == "" ||
                  _katsayi == 0) {
                setState(() {
                  _hatacode = "Please enter values !";
                });
              } else {
                setState(() {
                  _hatacode = "";
                  doAddition();
                });
              }
            },
            child: Text(
              "Calculate",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            height: 100,
            width: 300,
            margin: EdgeInsets.only(right: 50, left: 50, top: 50),
            decoration: BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0))),
            alignment: Alignment.center,
            child: Container(
              height: 70,
              width: 210,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Result: ",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    "${yazilandeger}",
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
