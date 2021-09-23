import 'package:flutter/material.dart';

int pilihan = 1;
bool notif = false;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          color: Colors.black,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: MediaQuery.of(context).size.height * 0.7,
                left: 0,
                right: 0,
                child: AppBar(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(
                        MediaQuery.of(context).size.width * 0.99,
                        MediaQuery.of(context).size.height * 0.35),
                    bottomRight: Radius.elliptical(
                        MediaQuery.of(context).size.width * 0.99,
                        MediaQuery.of(context).size.height * 0.35),
                  )),
                  title: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Hi.. Rizal Genjreng",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.025,
                              fontWeight: FontWeight.w600),
                        ),
                        IconButton(
                            icon: notif
                                ? Icon(Icons.notifications)
                                : Icon(Icons.notifications_active),
                            iconSize:
                                MediaQuery.of(context).size.height * 0.035,
                            onPressed: () {})
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                  backgroundColor: Color(0xFFF77A0F7),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.12,
                bottom: MediaQuery.of(context).size.height * 0.66,
                left: MediaQuery.of(context).size.width * 0.07,
                right: MediaQuery.of(context).size.width * 0.07,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.centerRight,
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                child: DropdownButton(
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xFFF77A0F7),
                                  ),
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.016,
                                      color: Colors.black),
                                  value: pilihan,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "Hari Ini",
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "Hari Besok",
                                      ),
                                      value: 2,
                                    ),
                                  ],
                                  onChanged: (int value) {
                                    setState(() {
                                      pilihan = value;
                                    });
                                  },
                                  hint: Text("data"),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Flexible(
                                        flex: 1,
                                        child: reportValue(
                                            context, "10K", "Pesanan")),
                                    Flexible(
                                        flex: 1,
                                        child: reportValue(
                                            context, "100", "Produk")),
                                    Flexible(
                                        flex: 1,
                                        child: reportValue(
                                            context, "1K", "Pelanggan")),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.36,
                  bottom: MediaQuery.of(context).size.height * 0.26,
                  left: MediaQuery.of(context).size.width * 0.07,
                  right: MediaQuery.of(context).size.width * 0.07,
                  child: Container(
                    child: Column(),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Container reportValue(
      BuildContext context, String valueTotal, String valueType) {
    return Container(
      height: MediaQuery.of(context).size.height / 11,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(valueTotal,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  color: Color(0xFFF77A0F7),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins")),
          Text(valueType,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.017,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins")),
        ],
      ),
    );
  }
}
