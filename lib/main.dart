import 'package:flutter/material.dart';
import 'package:nvc_grade/register.dart';
import 'package:nvc_grade/student.dart';

void main() => runApp(MaterialApp(home: FirstPage()));

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstPageState();
  }
}

class _FirstPageState extends State<FirstPage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/grade.png',
                  width: 100,
                ),
                Text(
                  'ระบบตรวจสอบผลการเรียน',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'วิทยาลัยอาชีวศึกษานครปฐม',
                  style: TextStyle(fontSize: 24),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                TextField(
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    icon: Icon(Icons.person),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.vpn_key),
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Builder(
                        builder: (context) => RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StudentPage()));
                          },
                          child: Text('Login'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Builder(
                        builder: (context) => RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          child: Text('Register'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
