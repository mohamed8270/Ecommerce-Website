import 'package:flutter/material.dart';
import 'package:pappathyweb/model/responsive.dart';

import '../../color.dart';
import 'bannersection.dart';
import 'header.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: KWhiteColor,
      height: 500,
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(KPadding),
            constraints: const BoxConstraints(maxWidth: KMaxWidth),
            child: Column(
              children: [
                Header(),
                SizedBox(
                  height: 50,
                ),
                Responsive.isDesktop(context) ? BannerSection() : MobBanner(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
