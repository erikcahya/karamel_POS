import 'package:explore_pos_karamel/login/SignUp.dart';
import 'package:explore_pos_karamel/login/signIn.dart';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Container(
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      bottom: MediaQuery.of(context).size.height * 0.55,
                      right: 0,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFFFFE1A8),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.elliptical(300, 100),
                                    bottomRight: Radius.elliptical(300, 100))),
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                          ),
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.13,
                              left: MediaQuery.of(context).size.height * 0.02,
                              bottom:
                                  MediaQuery.of(context).size.height * 0.095,
                              right: MediaQuery.of(context).size.width * 0.5,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              )),
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.025,
                              left: MediaQuery.of(context).size.width * 0.68,
                              bottom: MediaQuery.of(context).size.height * 0.31,
                              right: MediaQuery.of(context).size.width * -0.2,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              )),
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.11,
                              bottom: MediaQuery.of(context).size.height * 0.12,
                              right: MediaQuery.of(context).size.width * 0.14,
                              left: MediaQuery.of(context).size.width * 0.14,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 3,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                9,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/img_logo_r_3_lax.png"),
                                                fit: BoxFit.contain)),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: Container(
                                        child: Text(
                                          "Karamel POS",
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.04,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Poppins"),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: Container(
                                        child: Text(
                                          "Point Of Sales",
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Poppins"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.52,
                        bottom: MediaQuery.of(context).size.height * 0.25,
                        right: MediaQuery.of(context).size.width * 0.11,
                        left: MediaQuery.of(context).size.width * 0.11,
                        child: Container(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo exercitationem tenetur aspernatur quaerat debitis",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.023,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.88,
                bottom: MediaQuery.of(context).size.height * 0.07,
                right: MediaQuery.of(context).size.width * 0.07,
                left: MediaQuery.of(context).size.width * 0.07,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFFFFFE1A8),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text("Daftar",
                                style: TextStyle(
                                    color: Color(0xFFFFFBD41),
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.023,
                                    fontWeight: FontWeight.w700)),
                            width: MediaQuery.of(context).size.width / 3,
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFFFFFBD41),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Masuk",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.023,
                                  fontWeight: FontWeight.w700),
                            ),
                            width: MediaQuery.of(context).size.width / 3,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
