import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MediaQuery 활용하여 HomeHeaderForm 가운데 정렬
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: screenWidth < 520 ? Alignment(0, 0) : Alignment(-0.6, 0),
        // 화면 크기 520 미만일 때 가운데 정렬
        child: Container(
          // 감싸는 전체 흰색 form
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(),
                  _buildFormField(),
                  _buildFormSubmit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text(
          "모두의 숙소에서 숙소를 검색하세요",
          style: h4(),
        ),
        SizedBox(height: gap_xs),
        Text(
          "혼자하는 여행에 적합한 개인식부터 여럿이 함께하는 여행에 좋은 '공간전체' 숙소까지, 모두의 숙소에 다 있습니다.",
          style: body1(),
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildFormField() {
    return Column(
      // 세로방향 - 가로를 풀로 잡음, 세로 크기는 적힌 글자만큼
      children: [
        CommonFormField(prefixText: "위치", hintText: "근처 추천 장소"),
        SizedBox(height: gap_s),
        Row(
          // 가로방향 - 세로를 풀로 잡음, 가로의 크기를 정해줘야함
          children: [
            Expanded(
                child: CommonFormField(prefixText: "체크인", hintText: "날짜 입력")),
            Expanded(
                child: CommonFormField(prefixText: "체크 아웃", hintText: "날짜 입력")),
          ],
        ),
        SizedBox(height: gap_s),
        Row(
          // 가로방향 - 세로를 풀로 잡음, 가로의 크기를 정해줘야함
          children: [
            Expanded(child: CommonFormField(prefixText: "성인", hintText: "2")),
            Expanded(child: CommonFormField(prefixText: "어린이", hintText: "0")),
          ],
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  // TextButton - 기본버튼, OutlinedButton - 테두리가 있는 버튼, ElevatedButton - 그림자 있는 버튼
  // InkWell + Container 커스텀 버튼
  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: kAccentColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            "검색",
            style: subtitle1(mColor: Colors.white),
          )),
    );
    // 팩토리 메서드 - 여러 파라미터를 받을 때 from, 0개 혹은 하나의 파라미터를 받을 때 of
  }
}
