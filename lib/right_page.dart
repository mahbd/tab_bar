import 'package:flutter/material.dart';

class RightTab extends StatelessWidget {
  const RightTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Image(
        color: Colors.white,
        image: AssetImage('../assets/images/img_2.png'),
      ),
    );
  }
}
