import 'package:flutter/material.dart';
import 'package:ps_flutter/color.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PSColor.primary,
      ),
      
      body: Container(
        child: ListView(
          children: <Widget>[
            _buildItem(),
            RaisedButton(
              child: Text("Logout"),
              onPressed: _onLogoutPressed
            ),
          ],
        )
      ),
    );
  }

  Widget _buildItem(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromARGB(70, 0, 0, 0)),
        borderRadius: BorderRadius.circular(8)
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  _buildImageSayur(assetImage: "assets/sayur.png"),
                  Container(
                    margin: EdgeInsets.only(left:15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _buildTextNamaSayur("Kangkung"),
                        _buildTextDiskon(diskon:"10%"),
                        _buildTextHarga("Rp 8.500", hargaCoret: "Rp 9.500"),
                        Row(
                          children: <Widget>[
                            RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                              padding: EdgeInsets.only(
                                left: 4,
                                right: 4
                              ),
                              color: PSColor.primary,
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.add, color: Colors.white),
                                  Text("Tambah", style: TextStyle(color: Colors.white),)
                                ],
                              ),
                              onPressed: (){},
                            ),
                            Text(" x1 ikat")
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Icon(Icons.info_outline, color: Colors.grey,),
            ],
          ),
          Text(
            "Promo Maksimal 3",
            style: TextStyle(
              color: Colors.red
            ),
          )
        ],
      ),
    );
  }

  Image _buildImageSayur({String assetImage = ""}) {
    return Image(
      image: AssetImage(assetImage),
      width: 80,
      height: 80,
    );
  }

  Text _buildTextNamaSayur(String namaSayur) {
    return Text(
      namaSayur, 
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Container _buildTextDiskon({String diskon = ""}) {
    if (diskon.isEmpty) return Container();
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(8)
      ),
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      child: Text(
        diskon,
        style: TextStyle(
          color: Colors.red
        )
      ),
    );
  }

  Row _buildTextHarga(String harga, {String hargaCoret = ""}) {
    return Row(
      children: <Widget>[
        Text(harga),
        Text(
          hargaCoret, 
          style:TextStyle(decoration: TextDecoration.lineThrough))
      ],
    );
  }

  void _onLogoutPressed(){
    print("logout");
  }
}