import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Text('Programmer Semarang', style: TextStyle(fontSize: 24)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: _buildLoginBox(),
          ),
        ],
      )
    );
  }

  Container _buildLoginBox() {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          children: <Widget>[
            _buildTitle(),
            _buildPhoneTextField(),
            _buildLoginButton(),
            _buildLoginWithFacebook(),
          ],
        ),
      );
  }

  Padding _buildLoginWithFacebook() {
    return Padding(
              padding: EdgeInsets.only(
                top: 16,
                left: 12,
                right: 12,
              ),
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                  child: Text('Masuk dengan Facebook'),
                  onPressed: () { print('Masuk dengan Facebook'); },
                ),
              ),
            );
  }

  Padding _buildLoginButton() {
    return Padding(
              padding: const EdgeInsets.only(
                top: 21,
                left: 12,
                right: 12,
              ),
              child: RaisedButton(
                color: Color(0xFF6AA434),
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Masuk', 
                      style: TextStyle(color: Colors.white)
                    )
                  )
                ),
                onPressed: () { print('Hello'); },
              ),
            );
  }

  Padding _buildPhoneTextField() {
    return Padding(
              padding: const EdgeInsets.only(
                top: 23,
                left: 12,
                right: 12,
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nomor Telepon'
                ),
              ),
            );
  }

  Padding _buildTitle() {
    return Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Masuk', style: TextStyle(fontSize: 20)),
            );
  }
}
