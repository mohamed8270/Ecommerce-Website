import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../color.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: AboutSection(),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Image.asset(
                'assets/images/model3.jpg',
                height: 314,
                width: 314,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MobBanner extends StatefulWidget {
  const MobBanner({Key? key}) : super(key: key);

  @override
  State<MobBanner> createState() => _MobBannerState();
}

class _MobBannerState extends State<MobBanner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/model3.jpg',
              height: 214,
              width: 214,
            ),
          ],
        ),
        SizedBox(height: 30),
        AboutSection(),
      ],
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(
          'Feel good',
          maxLines: 1,
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w900,
            color: KThirdColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        AutoSizeText(
          'with us!',
          maxLines: 1,
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w500,
            color: KPrimaryColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Pappathy nighties were started by Basheer Ahamed who is a great dealer of Raphael, Botticelli, and Fashion no21 products all over Tamilnadu. Now he has a vast number of trending and comfortable products for women with perfect cloth which they can feel comfortable more',
          textAlign: TextAlign.justify,
          style: TextStyle(
            height: 1.3,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: KPrimaryColor.withOpacity(0.6),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
              color: KThirdColor,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 5),
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 5,
                      right: 20,
                    ),
                    child: Icon(
                      Icons.search_outlined,
                      color: KPrimaryColor,
                    ),
                  ),
                  hintText: 'Search your favorite style',
                  hintStyle: TextStyle(
                    color: KPrimaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                  focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                      UnderlineInputBorder(borderSide: BorderSide.none)),
            ),
          ),
        ),
      ],
    );
  }
}
