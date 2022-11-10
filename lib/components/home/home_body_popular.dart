import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';

class HomeBodyPopualr extends StatelessWidget {
  const HomeBodyPopualr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // column은 가운데 정렬
      // 왼쪽 정렬하려면 crossaxisalign
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPopularTitle(),
        _buildPopularList(),
      ],
    );
  }

  Widget _buildPopularTitle() {
    return SizedBox();
  }

  Widget _buildPopularList() {
    return Container(
      // 나중에 빼기
      color: Colors.red,
      child: Wrap(
        // row 는 깨짐
        children: [
          // 사진을 선택하기 위해 id 값 필요
          HomeBodyPopularItem(id: 0),
          SizedBox(width: 7.5), // 남는 공간이 15니까 (전체 width에서 -5씩 해줬음) spacer 해도됨
          HomeBodyPopularItem(id: 1),
          SizedBox(width: 7.5),
          HomeBodyPopularItem(id: 2),
        ],
      ),
    );
  }
}
