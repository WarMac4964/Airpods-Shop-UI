import 'package:airpods/model/data.dart';
import 'package:airpods/widget/product_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: use_key_in_widget_constructors
class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> with TickerProviderStateMixin {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<Widget> _screens = [
      ProductDetailWidget(
        airPods: listProd[0],
      ),
      ProductDetailWidget(
        airPods: listProd[1],
      ),
      ProductDetailWidget(
        airPods: listProd[2],
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: <Widget>[
          Container(
              width: size.width * 0.25,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                        decoration: const BoxDecoration(
                          border: Border(),
                        ),
                        padding: EdgeInsets.only(top: 35.25, bottom: size.width / 10),
                        child: SvgPicture.asset(
                          'assets/images/apple-logo-white.svg',
                          fit: BoxFit.contain,
                          color: Colors.black,
                          width: 25,
                        )),
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Row(
                      key: ValueKey<int>(selectedIndex),
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              listProd[0].name,
                              style: selectedIndex == 0
                                  ? const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      fontFamily: 'SFProDisplay-Regular',
                                    )
                                  : const TextStyle(
                                      fontFamily: 'SFProDisplay-Regular',
                                    ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              listProd[1].name,
                              style: selectedIndex == 1
                                  ? const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      fontFamily: 'SFProDisplay-Regular',
                                    )
                                  : const TextStyle(
                                      fontFamily: 'SFProDisplay-Regular',
                                    ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 2;
                            });
                          },
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                listProd[2].name,
                                style: selectedIndex == 2
                                    ? const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontFamily: 'SFProDisplay-Regular',
                                      )
                                    : const TextStyle(
                                        fontFamily: 'SFProDisplay-Regular',
                                      ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(child: child, scale: animation);
            },
            child: Container(
              key: ValueKey<int>(selectedIndex),
              width: size.width * 0.75,
              child: IndexedStack(
                index: selectedIndex,
                children: _screens,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
