import 'package:flutter/material.dart';
import 'package:shop_app_zeker/models/Product.dart';
import 'package:shop_app_zeker/models/product_card.dart';
import 'package:shop_app_zeker/screens/components/section_title.dart';
import 'package:shop_app_zeker/screens/constants.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popüler",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  image: demo_product[index].image,
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                  press: (){},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}