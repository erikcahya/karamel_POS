import 'package:explore_pos_karamel/login/signIn.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color(0xFFF77A0F7),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignIn()));
            },
          ),
          title: Text(
            "Daftar",
            textAlign: TextAlign.left,
          ),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                    height: MediaQuery.of(context).size.height / 1.56,
                    width: MediaQuery.of(context).size.width / 1.1,
                    color: Colors.white,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.05,
                          bottom: MediaQuery.of(context).size.height * 0.4,
                          left: MediaQuery.of(context).size.width * 0.044,
                          right: MediaQuery.of(context).size.width * 0.044,
                          child: Text(
                            "Silahkan isi formulir pendaftaran",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.13,
                          bottom: MediaQuery.of(context).size.height * 0.004,
                          left: MediaQuery.of(context).size.width * 0.024,
                          right: MediaQuery.of(context).size.width * 0.024,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 16),
                                height: MediaQuery.of(context).size.height / 11,
                                width: MediaQuery.of(context).size.width / 1,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Nama Lengkap",
                                      hintStyle: TextStyle(
                                          color: Color(0xFFF77A0F7),
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Proppins"),
                                      contentPadding: EdgeInsets.all(20),
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Color(0xFFF3D527F),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)))),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 16),
                                height: MediaQuery.of(context).size.height / 11,
                                width: MediaQuery.of(context).size.width / 1,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Surel",
                                      hintStyle: TextStyle(
                                          color: Color(0xFFF77A0F7),
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Proppins"),
                                      contentPadding: EdgeInsets.all(20),
                                      prefixIcon: Icon(
                                        Icons.mail,
                                        color: Color(0xFFF3D527F),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)))),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                height: MediaQuery.of(context).size.height / 11,
                                width: MediaQuery.of(context).size.width / 1,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Kata Sandi",
                                      hintStyle: TextStyle(
                                          color: Color(0xFFF77A0F7),
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Proppins"),
                                      contentPadding: EdgeInsets.all(20),
                                      prefixIcon: Icon(
                                        Icons.vpn_key,
                                        color: Color(0xFFF3D527F),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)))),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                height: MediaQuery.of(context).size.height / 11,
                                width: MediaQuery.of(context).size.width / 1,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Konfirmasi Kata Sandi",
                                      hintStyle: TextStyle(
                                          color: Color(0xFFF77A0F7),
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Proppins"),
                                      contentPadding: EdgeInsets.all(20),
                                      prefixIcon: Icon(
                                        Icons.vpn_key,
                                        color: Color(0xFFF3D527F),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)))),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.75,
                bottom: MediaQuery.of(context).size.height * 0.06,
                left: MediaQuery.of(context).size.width * 0.07,
                right: MediaQuery.of(context).size.width * 0.07,
                child: Container(
                  width: MediaQuery.of(context).size.width / 100,
                  height: MediaQuery.of(context).size.height / 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Sudah Memiliki Akun?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Proppins"),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          child: Text("Masuk Sekarang",
                              style: TextStyle(
                                  color: Color(0xFFF77A0F7),
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Proppins")))
                    ],
                  ),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.65,
                bottom: MediaQuery.of(context).size.height * 0.21,
                left: MediaQuery.of(context).size.width * 0.07,
                right: MediaQuery.of(context).size.width * 0.07,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF77A0F7),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16)))),
                    onPressed: () {},
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.026,
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
