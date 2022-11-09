import 'package:flutter/material.dart';

// 홈페이지에서 사용할 간격을 정의
const double gap_xl = 40;
const double gap_l = 30;
const double gap_m = 20;
const double gap_s = 10;
const double gap_xs = 5;

// 헤더 높이
const double header_height = 620;

// mediaQuery - 내 화면 사이즈를 알게 해주는 클래스
double getBodyWidth(BuildContext context) {
  // 모든 정보를 알고있는게 buildcontext
  // 서로 context를 공유하려면 context를 전달하면됨
  return MediaQuery.of(context).size.width * 0.7;
  // 화면의 context를 전달받아서 화면의 넓이를 확인
  // 다른 파일에서 호출해서 사용할 수 있음
}
