import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String image;
  final String productname;
  final String productType;
  final String province;
  final double price;

  SingleProduct({
    required this.image,
    required this.productname,
    required this.productType,
    required this.province,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 250,
        width: 180,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 190,
                width: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/$image"),
                  ),
                ),
              ),
            ),
            Text(
              "\$ $price",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
