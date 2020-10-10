import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card1.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/models/Product1.dart';

import '../../../size_config.dart';

class TransactionList1 extends StatelessWidget {
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
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard1(product1: demo1Products[index]);

                  return SizedBox
                      .shrink(); 
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
