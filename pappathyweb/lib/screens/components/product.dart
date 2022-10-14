import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../color.dart';
import '../../model/model.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KPadding / 2),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 5,
          shadowColor: KSecondaryColor,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(5),
            height: 310,
            width: 310,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    product.image,
                    height: 250,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                AutoSizeText(
                  product.title,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
