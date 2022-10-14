import 'package:flutter/material.dart';

import '../../color.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderMenu(
          press: () {},
          title: 'Men',
        ),
        SizedBox(
          width: KPadding,
        ),
        HeaderMenu(
          press: () {},
          title: 'Women',
        ),
        SizedBox(
          width: KPadding,
        ),
        HeaderMenu(
          press: () {},
          title: 'Kids',
        ),
        SizedBox(
          width: KPadding,
        ),
        HeaderMenu(
          press: () {},
          title: 'Brands',
        ),
        SizedBox(
          width: KPadding,
        ),
        HeaderMenu(
          press: () {},
          title: 'Collections',
        ),
      ],
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: KPrimaryColor,
          ),
        ),
      ),
    );
  }
}

class MobMenu extends StatefulWidget {
  const MobMenu({Key? key}) : super(key: key);

  @override
  State<MobMenu> createState() => _MobMenuState();
}

class _MobMenuState extends State<MobMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderMenu(
            press: () {},
            title: 'Men',
          ),
          SizedBox(
            height: KPadding,
          ),
          HeaderMenu(
            press: () {},
            title: 'Women',
          ),
          SizedBox(
            height: KPadding,
          ),
          HeaderMenu(
            press: () {},
            title: 'Kids',
          ),
          SizedBox(
            height: KPadding,
          ),
          HeaderMenu(
            press: () {},
            title: 'Brands',
          ),
          SizedBox(
            height: KPadding,
          ),
          HeaderMenu(
            press: () {},
            title: 'Collections',
          ),
        ],
      ),
    );
  }
}
