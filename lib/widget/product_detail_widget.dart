import 'package:airpods/model/model.dart';
import 'package:airpods/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class ProductDetailWidget extends StatelessWidget {
  final AirPods airPods;

  const ProductDetailWidget({Key? key, required this.airPods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      height: screenSize.height,
      width: screenSize.width * 0.75,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Apple',
              style: TextStyle(
                color: Color.fromRGBO(119, 112, 112, 1),
                fontSize: 17.02,
                fontFamily: 'SFProDisplay-Regular',
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              airPods.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 39.65,
                fontWeight: FontWeight.w600,
                fontFamily: 'SFProDisplay-Regular',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              airPods.imgPath[0],
              height: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              airPods.featureDesc[0],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromRGBO(119, 112, 112, 1),
                fontSize: 17.02,
                fontFamily: 'SFProDisplay-Regular',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ProductDetailsScreen(airPods: airPods))),
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: const Icon(Icons.add),
              ),
            ),
            Image.asset(
              airPods.imgPath[1],
              height: 200,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              airPods.featureDesc[1],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromRGBO(119, 112, 112, 1),
                fontSize: 17.02,
                fontFamily: 'SFProDisplay-Regular',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
