import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_zeker/details/Components/color_dot.dart';
import 'package:shop_app_zeker/models/Product.dart';
import 'package:shop_app_zeker/screens/constants.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black,),
        actions: [
          IconButton(
              onPressed: (){ },
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                  child: SvgPicture.asset("assets/icons/Heart.svg",height: 20,),
              ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: defaultPadding),
          Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(defaultPadding, defaultPadding * 1.5,
                    defaultPadding, defaultPadding,),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultBorderRadius * 3 ),
                    topRight: Radius.circular(defaultBorderRadius * 3 ),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        const SizedBox(width: defaultPadding,),
                        Text("???"+ product.price.toString(),
                          style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                      const Padding(
                        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                        child: const Text("Bir g??mlek, yuvarlak yakal?? ve yakla????k 8 ila 13 cm uzunlu??unda ve genellikle 2-5 d????meli bir patl??, yakas??z bir kazak g??mlek"),
                      ),
                      const Text(
                          "Renkler",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const SizedBox(height: defaultPadding / 2,),
                      Row(
                        children: [
                          ColorDot(
                            color: const Color(0xFFBEE8EA),
                            isActive: false,
                            press: () {},
                          ),
                          ColorDot(
                            color: const Color(0xFF141B4A),
                            isActive: true,
                            press: () {},
                          ),
                          ColorDot(
                            color: const Color(0xFFF4E5C3),
                            isActive: false,
                            press: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: defaultPadding  * 1.5,),
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 48,
                          child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                shape: const StadiumBorder(),
                              ),
                              child: const  Text("Sepete ekle"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ),
        ]
      ),
    );
  }
}

