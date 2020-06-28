import 'package:flutter/material.dart';
import 'package:quicktodoit/q_r_icon_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick TODO',
      theme:
          ThemeData(fontFamily: 'Inconsolata', primaryColor: Color(0xff1A1A1A)),
      home: Scaffold(
          appBar: AppBar(
            title: Text('QUICK TODO',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 35,
                    letterSpacing: 5)),
          ),
          body: Center(
            child: GridView.count(
              primary: true,
              childAspectRatio: 10,
              crossAxisCount: 1,
              children: <Widget>[
                TODO(),
                TODO(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle),
                title: Text('Add'),
              ),
              BottomNavigationBarItem(
                icon: Icon(QRIcon.qrcode),
                title: Text('Share QR'),
              )
            ],
          )),
    );
  }
}

class TODO extends StatefulWidget {
  TODO({Key key}) : super(key: key);

  @override
  _TODOState createState() => _TODOState();
}

class _TODOState extends State<TODO> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          onChanged: (bool value) {
            setState(() {
              _isSelected = value;
            });
          },
          value: _isSelected,
        ),
        Text("helllllllooooo")
      ],
    );
  }
}
