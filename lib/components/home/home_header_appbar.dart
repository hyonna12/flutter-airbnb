import 'package:flutter/material.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildAppBarLogo(),
        Spacer(), // 사이 띄우기
        _buildAppBarMenu(),
      ],
    );
  }

  // 로고, 이름 / 로그인, 회원가입 메서드화
  Widget _buildAppBarLogo() {
    return SizedBox();
  }

  Widget _buildAppBarMenu() {
    return SizedBox();
  }
}
