import 'package:flutter/material.dart';
import 'package:weigthcalculator/altikose.dart';
import 'package:weigthcalculator/boru.dart';
import 'package:weigthcalculator/dolumil.dart';
import 'package:weigthcalculator/kare.dart';
import 'package:weigthcalculator/kosebent.dart';
import 'package:weigthcalculator/lama.dart';
import 'package:weigthcalculator/saclevha.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "weigth calculator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
        body: ListView(children: <Widget>[
          Padding(padding: EdgeInsets.all(18)),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange,
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
                            'ALTI KÖŞE ',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade800,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Altikose()),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange,
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
                            'BORU',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade800,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Boru()));
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange,
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
                            'LAMA ',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade800,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Lama()));
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange,
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
                            'SACLEVHA ',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade800,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Saclevha()));
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange,
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
                            'KARE ',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade800,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Kare()));
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange,
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
                            'DOLUMİL',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade800,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dolumil()));
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange,
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
                            'KOSEBENT',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade800,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Kosebent()));
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange,
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
                            'KONİK ',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade800,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            print('Pressed');
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange,
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
                            'KONİK ',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade800,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            print('Pressed');
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange,
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
                            'KONİK ',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade800,
                            onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                          ),
                          onPressed: () {
                            print('Pressed');
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]));
  }
}
