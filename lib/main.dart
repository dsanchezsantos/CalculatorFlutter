import 'package:flutter/material.dart';

void main () {
  runApp(MaterialApp(
    title:
      "Calculator",
    home:
      Home(

      ),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //variables
  double _num1 = 3;
  double _num2 = 4;
  double _res = 0;
  String op = "";

  void plus() {
    setState(() {
      _res = _num1 + _num2;
      _num1 = _res;
    });
  }

  void sub() {
    setState(() {
      _res = _num1 - _num2;
      _num1 = _res;
    });
  }

  void multi() {
    setState(() {
      _res = _num1 * _num2;
      _num1 = _res;
    });
  }

  void div() {
    setState(() {
      _res = _num1 / _num2;
      _num1 = _res;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
            "images/white-wallpaper-18.png",
            fit: BoxFit.cover,
            height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 30.0),
                  child:
                  Text(
                    "Calculator",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child:
                  FlatButton(
                      onPressed: () {
                        plus();
                      },
                      child: Text(
                        "+",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30.0
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child:
                  FlatButton(
                      onPressed: () {
                        sub();
                      },
                      child: Text(
                        "-",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30.0
                        ),
                      )
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child:
                  FlatButton(
                      onPressed: () {
                        multi();
                      },
                      child: Text(
                        "x",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30.0
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child:
                  FlatButton(
                      onPressed: () {
                        div();
                      },
                      child: Text(
                        "/",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30.0
                        ),
                      )
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 20.0, 0.0, 20.0),
                    child:
                    Text(
                      "Resultado :",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 50.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$_res",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 40.0,
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}


