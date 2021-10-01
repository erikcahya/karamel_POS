import 'package:flutter/material.dart';

int pilihan = 1;
bool notif = true;

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
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.7,
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.11,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    sidebarMenu(
                        "Kategori", AssetImage("assets/streamic_katagori.png")),
                    sidebarMenu(
                        "Produk", AssetImage("assets/box-openic_produk.png")),
                    sidebarMenu("Inventaris",
                        AssetImage("assets/boxesic_inventaris.png")),
                    sidebarMenu("Penjualan",
                        AssetImage("assets/receiptic_penjualan.png")),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      margin: EdgeInsets.fromLTRB(15, 40, 15, 10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 1,
                              side: BorderSide(
                                color: Color(0xFFFDC3545),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              primary: Color(0xFFFFFFFFF)),
                          onPressed: () {},
                          child: Text(
                            "Keluar",
                            style: TextStyle(
                                color: Color(0xFFFDC3545),
                                fontSize: 14,
                                fontFamily: "Poppins"),
                          )),
                    )
                  ],
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  left: 16,
                  right: 16,
                  child: Container(
                    child: Stack(
                      children: [
                        Positioned(
                            top: 0,
                            bottom: MediaQuery.of(context).size.height * 0.88,
                            left: 0,
                            right: 0,
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        right: 16,
                                      ),
                                      height:
                                          MediaQuery.of(context).size.height,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFFFFBD41),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height,
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Flexible(
                                            child: Text(
                                              "Rizal Genjreng",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFFF808080),
                                                  fontFamily: "Poppins"),
                                            ),
                                          ),
                                          Flexible(
                                              child: Text(
                                                  "rizalgenjreng@gmail.com",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      color: Color(0xFFFE5E5E5),
                                                      fontFamily: "Poppins"))),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: MediaQuery.of(context).size.height * 0.71,
                left: 0,
                right: 0,
                child: AppBar(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(
                        MediaQuery.of(context).size.width * 0.99,
                        MediaQuery.of(context).size.height * 0.3),
                    bottomRight: Radius.elliptical(
                        MediaQuery.of(context).size.width * 0.99,
                        MediaQuery.of(context).size.height * 0.3),
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
                            icon: Icon(notif
                                ? Icons.notifications
                                : Icons.notifications_active),
                            iconSize:
                                MediaQuery.of(context).size.height * 0.035,
                            onPressed: () {
                              setState(() {
                                notif = !notif;
                              });
                            })
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                  backgroundColor: Color(0xFFFFFBD41),
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
                                  isDense: false,
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
                  bottom: MediaQuery.of(context).size.height * 0.36,
                  left: MediaQuery.of(context).size.width * 0.07,
                  right: MediaQuery.of(context).size.width * 0.07,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Grafik Penjualan",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.025,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                        Flexible(
                            flex: 5,
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: Card(
                                elevation: 3,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 2,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                            )),
                      ],
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.87,
                  bottom: MediaQuery.of(context).size.height * 0.04,
                  left: MediaQuery.of(context).size.width * 0.75,
                  right: MediaQuery.of(context).size.width * 0.07,
                  child: InkWell(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.0001,
                      width: MediaQuery.of(context).size.width * 0.02,
                      child: Center(
                        child: Image(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.height * 0.04,
                          image: AssetImage("assets/cart-plusic_keranjang.png"),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.amber, shape: BoxShape.circle),
                    ),
                    onTap: () {},
                  ))
            ],
          ),
        ),
      ),
    );
  }

  var trailingIcon = true;
  ExpansionTile sidebarMenu(String judul, AssetImage iconGambar) {
    return ExpansionTile(
      trailing: IconButton(
          icon: Icon(
              trailingIcon ? Icons.chevron_right : Icons.keyboard_arrow_down),
          onPressed: () {
            setState(() {});
          }),
      // trailingIcon != trailingIcon
      //     ? Icon(
      //         Icons.chevron_right,
      //         color: Color(0xFFFFFBD41),
      //       )
      //     : Icon(
      //         Icons.keyboard_arrow_down,
      //         color: Color(0xFFFFFBD41),
      //       ),
      leading: Image(
        image: iconGambar,
        height: MediaQuery.of(context).size.height * 0.025,
        width: MediaQuery.of(context).size.width * 0.06,
      ),
      backgroundColor: Colors.transparent,
      title: Text(
        judul,
        style: TextStyle(
            color: Color(0xFFFE5E5E5),
            fontSize: 14,
            fontWeight: FontWeight.w400),
        textAlign: TextAlign.left,
      ),
      children: [
        Text(
          'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffee species.',
          style: TextStyle(fontSize: 15),
          maxLines: 5,
          softWrap: true,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }

  // Container sideBarMenu(BuildContext context, Color warna1,
  //     AssetImage iconGambar, String textSidebar) {
  //   return Container(
  //     child: Row(
  //       children: <Widget>[
  //         Container(
  //             padding: EdgeInsets.all(8),
  //             height: MediaQuery.of(context).size.height,
  //             width: MediaQuery.of(context).size.width * 0.09,
  //             child: Image(
  //               image: iconGambar,
  //               height: 10,
  //               width: 10,
  //               fit: BoxFit.fitWidth,
  //             )),
  //         Container(
  //           height: MediaQuery.of(context).size.height,
  //           width: MediaQuery.of(context).size.width * 0.43,
  //           child: Text(
  //             textSidebar,
  //             style: TextStyle(
  //                 fontFamily: "Poppins",
  //                 fontSize: 14,
  //                 fontWeight: FontWeight.w400,
  //                 color: Color(0xFFFE5E5E5)),
  //           ),
  //           alignment: Alignment.centerLeft,
  //         ),
  //         ExpansionTile(
  //           title: Text("data"),
  //         ),
  //       ],
  //     ),
  //     height: MediaQuery.of(context).size.height * 0.06,
  //     width: MediaQuery.of(context).size.width,
  //     color: warna1,
  //   );
  // }

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
                  color: Color(0xFFFFFBD41),
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
