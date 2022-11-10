import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

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
    return Column(
      children: [
        Text(
          "한국 숙소에 직접 다녀간 게스트의 후기",
          style: h5(),
        ),
        Text(
          "게스트 후기 2,500,000개 이상, 평균 평점 4.7점(5점 만점)",
          style: body1(),
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildPopularList() {
    return Container(
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
