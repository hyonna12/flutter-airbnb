import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular.dart';
import 'package:flutter_airbnb/components/home/home_header_banner.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: getBodyWidth(context),
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopualr(),
          ],
        ),
      ),
    );
  }
}
