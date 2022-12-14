import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/logo.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(), // 사이 띄우기
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  // 로고, 이름 / 로그인, 회원가입 메서드화
  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Logo(),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "RoomOfAll",
          style: h5(mColor: Colors.white),
        ),
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text("회원가입", style: subtitle1(mColor: Colors.white)),
        SizedBox(width: gap_m),
        Text("로그인", style: subtitle1(mColor: Colors.white)),
      ],
    );
  }
}
