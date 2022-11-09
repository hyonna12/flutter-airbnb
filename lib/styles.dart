import 'package:flutter/material.dart';

// text style 정의 - 사용할 글자 스타일 정의
TextStyle h4({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: mColor);
  // h4 호출하면 size, weight, color 정해지고 color에 원하는 색을 집어넣으면 됨(기본 색상 검정)
}

TextStyle h5({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle subtitle1({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle subtitle2({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle overLine({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle body1({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 16, color: mColor);
}
