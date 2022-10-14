import 'package:flutter/material.dart';

import '../../color.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Services(
          image: 'assets/images/clothes.jpg',
          title: 'Vast Collections',
          title2: 'Lot of collections\nand trendy models',
        ),
        Services(
          image: 'assets/images/sewing.jpg',
          title: 'Highly Designed',
          title2: 'Hand-crafted with\n more experienced designers',
        ),
        Services(
          image: 'assets/images/sale.jpg',
          title: 'Best Offer!',
          title2: 'Best offer for whole\nsale and with low pricing',
        ),
      ],
    );
  }
}

class Services extends StatelessWidget {
  const Services({
    Key? key,
    required this.image,
    required this.title,
    required this.title2,
  }) : super(key: key);
  final String image, title, title2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KPadding),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(8),
        shadowColor: KSecondaryColor,
        child: Container(
          padding: EdgeInsets.all(KPadding / 2),
          child: Column(
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      image,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: KPrimaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                title2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                  color: KPrimaryColor.withOpacity(0.3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
