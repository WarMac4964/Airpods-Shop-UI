import 'package:airpods/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 35.25, bottom: size.width / 10),
                      child: SvgPicture.asset(
                        'assets/images/apple-logo-white.svg',
                        fit: BoxFit.contain,
                        color: Colors.white,
                        width: 25,
                      )),
                  Container(
                    height: size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(0, 0, 0, 0.07),
                        Color.fromRGBO(0, 0, 0, 0.75),
                      ]),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/main.png'),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Wireless.\nEffortless.\nMagical.',
                      style: TextStyle(
                        letterSpacing: 3,
                        color: const Color.fromRGBO(218, 218, 218, 0.15),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: size.width / 10,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 15),
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width / 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductListScreen()));
                          },
                          child: const Text(
                            'Buy Now',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              Positioned(
                left: 150 - size.width,
                bottom: size.width - 200,
                child: Transform(
                  child: Text("AirPods",
                      style: TextStyle(
                        fontSize: size.width - 250,
                        letterSpacing: 10,
                        fontFamily: 'SFProDisplay-Regular',
                        color: const Color.fromRGBO(218, 218, 218, 0.15),
                      )),
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()..rotateZ(-90 * 3.1415927 / 180),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
