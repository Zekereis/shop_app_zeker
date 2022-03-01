import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_zeker/models/Category.dart';
import 'package:shop_app_zeker/models/Product.dart';
import 'package:shop_app_zeker/models/new_arrival.dart';
import 'package:shop_app_zeker/models/popular.dart';
import 'package:shop_app_zeker/screens/components/categories.dart';
import 'package:shop_app_zeker/screens/components/search_form.dart';
import 'package:shop_app_zeker/screens/components/section_title.dart';
import 'package:shop_app_zeker/screens/constants.dart';

import '../models/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding / 2),
            Text(
              "41/1 Kocaeli ",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: SvgPicture.asset("assets/icons/Notification.svg"),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Keşfet",style: Theme.of(context)
                .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.w500,color: Colors.black),
            ),
            const Text("Senin için en iyi Kıyafetler",
            style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const SizedBox(height: defaultPadding,),
            const NewArrival(),
            const SizedBox(height: defaultPadding,),
            const Popular(),
          ],
        ),
      ),
    );
  }
}





