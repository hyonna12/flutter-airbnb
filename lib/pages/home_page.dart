import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body.dart';
import 'package:flutter_airbnb/components/home/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 구조 - 앱의 기본 ux 를 지키기 위해 사용
    return Scaffold(
      body: ListView(
        children: [
          HomeHeader(),
          HomeBody(),
        ],
      ),
    );
  }
}
