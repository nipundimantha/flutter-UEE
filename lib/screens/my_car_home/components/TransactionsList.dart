import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card2.dart';
import 'package:shop_app/models/Product2.dart';

import '../../../size_config.dart';

class TransactionList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demo2Products.length,
                (index) {
                  if (demo2Products[index].isPopular)
                    return ProductCard2(product2: demo2Products[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
            ],
          ),
        )
      ],
    );
  }
}
