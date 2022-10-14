import 'package:flutter/material.dart';
import 'package:pappathyweb/model/responsive.dart';

import '../../color.dart';
import 'menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          Builder(
            builder: ((context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu_rounded,
                    color: KSecondaryColor,
                  ),
                )),
          ),
        Image(
          image: AssetImage('assets/logo/preflogo4.png'),
          height: 70,
          width: 70,
        ),
        SizedBox(
          width: 10,
        ),
        Image(
          image: AssetImage('assets/logo/preflogolet.png'),
          height: 80,
          width: 80,
        ),
        Spacer(),
        if (Responsive.isDesktop(context)) HeaderWebMenu(),
        Spacer(),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(left: 8, right: 10),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: KThirdColor),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: KThirdColor,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: KThirdColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                      UnderlineInputBorder(borderSide: BorderSide.none)),
            ),
          ),
        )),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: KThirdColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Center(
            child: Icon(
              Icons.shopping_bag_outlined,
              color: KWhiteColor,
              size: 18,
            ),
          ),
        )
      ],
    );
  }
}
