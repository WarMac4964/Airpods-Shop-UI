import 'package:airpods/model/model.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ProductDetailsScreen extends StatelessWidget {
  final AirPods airPods;

  const ProductDetailsScreen({Key? key, required this.airPods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: <Widget>[
          Container(
            width: size.width * 0.25,
            color: Colors.black,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    airPods.imgPath[3],
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    airPods.imgPath[4],
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    airPods.imgPath[5],
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    airPods.imgPath[6],
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    airPods.imgPath[7],
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            width: size.width * 0.75,
            color: const Color.fromRGBO(240, 241, 246, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    airPods.imgPath[2],
                    height: 200,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  airPods.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 29.17,
                    color: Colors.black,
                    fontFamily: 'SFProDisplay-Regular',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  airPods.description,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.15,
                    color: Color.fromRGBO(58, 58, 58, 1),
                    fontFamily: 'SFProDisplay-Regular',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  '\$${airPods.price}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 26.74,
                    color: Colors.black,
                    fontFamily: 'SFProDisplay-Regular',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(35), color: Colors.black),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.42,
                          color: Colors.white,
                          fontFamily: 'SFProDisplay-Regular',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(35), color: Colors.white),
                      child: const Text(
                        'Pay with Pay',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.42,
                          color: Colors.black,
                          fontFamily: 'SFProDisplay-Regular',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
