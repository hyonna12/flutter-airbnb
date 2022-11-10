import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({required this.id, Key? key}) : super(key: key);
  // {}내부는 선택적 매개변수 - 넣어도 되고 안넣어도 됨
  // 꼭 받아야하는 건 required 걸기
// final은 클래스가 new될때 초기화돼야함
  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    // container의 크기
    // 전체 1000이라면 populatitemWidth = 700/3 -5 = 228
    double popularitemWidth = getBodyWidth(context) / 3 - 5;

    return Container(
      color: Colors.green,
      height: 200,
      width: popularitemWidth,
      // 나중에 지웠다 추가했다 해보기
      constraints: BoxConstraints(
        minWidth: 320, // 최소값 - 가장 작은 디바이스 크기
      ),
      child: Column(
        children: [
          _buildPopulaItemImage(),
          _buildPopularItemStar(),
          _buildPopularItemComment(),
          _buildPopularItemUserInfo(),
        ],
      ),
    );
  }

  Widget _buildPopulaItemImage() {
    return SizedBox();
  }

  Widget _buildPopularItemStar() {
    return SizedBox();
  }

  Widget _buildPopularItemComment() {
    return SizedBox();
  }

  Widget _buildPopularItemUserInfo() {
    return SizedBox();
  }
}
