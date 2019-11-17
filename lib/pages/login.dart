import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ps_flutter/pages/home.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 360, height: 640, allowFontScaling: true)
          ..init(context);
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/banner.png"),
                      width: ScreenUtil().setWidth(360),
                      height: ScreenUtil().setHeight(218),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: ScreenUtil().setHeight(39),
                          left: ScreenUtil().setWidth(30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Selamat datang di",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(20)),
                          ),
                          Text("DapurFresh.ID",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(20),
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: ScreenUtil().setHeight(40)),
                _buildLoginBox(),
              ],
            ),
          ),
        ));
  }

  Container _buildLoginBox() {
    return Container(
      width: ScreenUtil().setWidth(310),
      height: ScreenUtil().setHeight(281),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(51, 0, 0, 0),
                offset: Offset(0, 0),
                blurRadius: 2)
          ]),
      child: Column(
        children: <Widget>[
          _buildTitle(),
          SizedBox(height: ScreenUtil().setHeight(23)),
          _buildPhoneTextField(),
          SizedBox(height: ScreenUtil().setHeight(21)),
          _buildLoginButton(),
          _buildDivider(),
          _buildLoginWithFacebook(),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return SizedBox(
      width: ScreenUtil().setWidth(273),
      height: ScreenUtil().setHeight(30),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(),
          ),
          SizedBox(width: ScreenUtil().setWidth(8)),
          Text("atau"),
          SizedBox(width: ScreenUtil().setWidth(8)),
          Expanded(
            child: Divider(),
          )
        ],
      ),
    );
  }

  Widget _buildLoginWithFacebook() {
    return SizedBox(
      width: ScreenUtil().setWidth(273),
      height: ScreenUtil().setHeight(44),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("assets/fb-icon.png"),
              width: ScreenUtil().setWidth(24),
              height: ScreenUtil().setHeight(24),
            ),
            SizedBox(width: ScreenUtil().setWidth(5)),
            Text('Masuk dengan Facebook'),
          ],
        ),
        onPressed: _goToHome,
      ),
    );
  }

  void _goToHome() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: ScreenUtil().setWidth(273),
      height: ScreenUtil().setHeight(44),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Color(0xFF6AA434),
        child:
            Center(child: Text('Masuk', style: TextStyle(color: Colors.white))),
        onPressed: _goToHome,
      ),
    );
  }

  Widget _buildPhoneTextField() {
    return Container(
      width: ScreenUtil().setWidth(285),
      height: ScreenUtil().setHeight(50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Color.fromARGB(91, 0, 0, 0))),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey[300]),
            hintText: "Nomor Telepon",
            contentPadding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(15),
                horizontal: ScreenUtil().setWidth(20))),
      ),
    );
  }

  Padding _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
      child: Text('Masuk', style: TextStyle(fontSize: ScreenUtil().setSp(20))),
    );
  }
}
