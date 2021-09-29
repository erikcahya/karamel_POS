import 'package:explore_pos_karamel/login/SignUp.dart';
import 'package:explore_pos_karamel/login/signIn.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFBD41),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignIn()));
            },
          ),
          title: Text(
            "Lupa Kata Sandi",
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
                    height: MediaQuery.of(context).size.height / 1.9,
                    width: MediaQuery.of(context).size.width / 1.1,
                    color: Colors.white,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.07,
                          bottom: MediaQuery.of(context).size.height * 0.3,
                          left: MediaQuery.of(context).size.width * 0.044,
                          right: MediaQuery.of(context).size.width * 0.044,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Silahkan masukkan alamat surel anda untuk mereset kata sandi. Tautan konfirmasi akan dikirimkan ke alamat surel anda.",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.2,
                          bottom: MediaQuery.of(context).size.height * 0.007,
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
                                      hintText: "Surel",
                                      hintStyle: TextStyle(
                                          color: Color(0xFFFFFBD41),
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Proppins"),
                                      contentPadding: EdgeInsets.all(20),
                                      prefixIcon: Icon(
                                        Icons.mail,
                                        color: Color(0xFFFFFBD41),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFFFBD41),
                                              style: BorderStyle.solid),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFFFBD41),
                                              style: BorderStyle.solid),
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
                top: MediaQuery.of(context).size.height * 0.49,
                bottom: MediaQuery.of(context).size.height * 0.35,
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
                        "Belum memiliki akun?",
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
                                    builder: (context) => SignUp()));
                          },
                          child: Text("Daftar Sekarang",
                              style: TextStyle(
                                  color: Color(0xFFFFFBD41),
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Proppins")))
                    ],
                  ),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.39,
                bottom: MediaQuery.of(context).size.height * 0.47,
                left: MediaQuery.of(context).size.width * 0.07,
                right: MediaQuery.of(context).size.width * 0.07,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFFBD41),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16)))),
                    onPressed: () {},
                    child: Text(
                      "Kirim",
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
