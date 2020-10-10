import 'package:flutter/material.dart';
import 'package:shop_app/models/Product1.dart';

import '../constants.dart';
import '../size_config.dart';

class ProductCard1 extends StatelessWidget {
  const ProductCard1({
    Key key,
    this.width = 240,
    this.aspectRetio = 1.02,
    @required this.product1,
  }) : super(key: key);


  final double width, aspectRetio;
  final Product1 product1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          // onTap: () => Navigator.pushNamed(
          //   context,
          //   DetailsScreen.routeName,
          //   arguments: Product1DetailsArguments(product1: product1),
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: product1.id.toString(),
                    child: Image.asset(product1.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                product1.title,
                style: TextStyle(color: Color(0xFFFF7643),
                fontSize: getProportionateScreenWidth(22),
                ),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\${product1.price}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(0),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      height: getProportionateScreenWidth(28),
                      width: getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                        color: product1.isFavourite
                            ? kPrimaryColor.withOpacity(0.15)
                            : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
