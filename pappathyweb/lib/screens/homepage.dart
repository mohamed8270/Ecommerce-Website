import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pappathyweb/color.dart';
import 'package:pappathyweb/model/model.dart';
import 'package:pappathyweb/model/responsive.dart';
import 'package:pappathyweb/screens/components/menu.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/headercontainer.dart';
import 'components/product.dart';
import 'components/servicescard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Image(
                  image: AssetImage('assets/logo/preflogo4.png'),
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            MobMenu(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(),
            Container(
              padding: const EdgeInsets.all(KPadding),
              constraints: const BoxConstraints(maxWidth: KMaxWidth),
              child: Column(
                children: [
                  ServicesCard(),
                  SizedBox(height: 20),
                  Responsive(
                    desktop: ProductCard(
                      crossAxiscount: _size.width < 650 ? 2 : 3,
                      aspectRatio: _size.width < 650 ? 0.85 : 1.1,
                    ),
                    tablet: ProductCard(
                      crossAxiscount: _size.width < 825 ? 2 : 3,
                      aspectRatio: _size.width < 825 ? 0.85 : 1.1,
                    ),
                    mobile: ProductCard(
                      crossAxiscount: _size.width < 690 ? 2 : 3,
                      aspectRatio: _size.width < 560 ? 0.85 : 1.1,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset('assets/images/banner.jpg'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80),
                  SocialMedia()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.crossAxiscount = 3,
    this.aspectRatio = 1.1,
  }) : super(key: key);
  final int crossAxiscount;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxiscount, childAspectRatio: aspectRatio),
      itemBuilder: (context, index) => Products(
        product: products[index],
        press: () {},
      ),
      itemCount: products.length,
    );
  }
}

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 150,
      width: 800,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                    color: KSecondaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'Follow us on',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: KPrimaryColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Social(
                    svgpic: 'assets/icons/google.svg',
                    press: () async {
                      var url = 'https://ibu-ux.web.app/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Can't launch Url";
                      }
                    },
                  ),
                  SizedBox(width: 10),
                  Social(
                    svgpic: 'assets/icons/facebook.svg',
                    press: () async {
                      var url =
                          'https://www.facebook.com/profile.php?id=100026608519470';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Can't launch Url";
                      }
                    },
                  ),
                  SizedBox(width: 10),
                  Social(
                    svgpic: 'assets/icons/instagram.svg',
                    press: () async {
                      var url =
                          'https://www.instagram.com/i_n_o_c_e_n_t_ibrahim/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Can't launch Url";
                      }
                    },
                  ),
                  SizedBox(width: 10),
                  Social(
                    svgpic: 'assets/icons/twitter.svg',
                    press: () async {
                      var url = 'https://twitter.com/Rasithibrahim';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Can't launch Url";
                      }
                    },
                  ),
                  SizedBox(width: 10),
                  Social(
                    svgpic: 'assets/icons/youtube.svg',
                    press: () async {
                      var url =
                          'https://www.youtube.com/channel/UCbhnTR20ifwVL7vINXs02cA';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Can't launch Url";
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                    color: KSecondaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'Developer',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: KPrimaryColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Social(
                    svgpic: 'assets/icons/linkedin.svg',
                    press: () async {
                      var url =
                          'https://www.linkedin.com/in/mohamed-ibrahim-8801591aa/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Can't launch Url";
                      }
                    },
                  ),
                  SizedBox(width: 10),
                  Social(
                    svgpic: 'assets/icons/github.svg',
                    press: () async {
                      var url = 'https://github.com/mohamed8270';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Can't launch Url";
                      }
                    },
                  ),
                  SizedBox(width: 10),
                  Social(
                    svgpic: 'assets/icons/dribble.svg',
                    press: () async {
                      var url = 'https://dribbble.com/Rasith02';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Can't launch Url";
                      }
                    },
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class Social extends StatelessWidget {
  const Social({
    Key? key,
    required this.svgpic,
    required this.press,
  }) : super(key: key);
  final String svgpic;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Color(0xFFF2F2F2)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(
            svgpic,
            color: KPrimaryColor,
          ),
        ),
      ),
    );
  }
}
