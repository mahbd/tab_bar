import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LeftTab extends StatelessWidget {
  const LeftTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(children: [
        AnimatedTextKit(repeatForever: true, animatedTexts: [
          TypewriterAnimatedText('This is left part',
              textStyle: const TextStyle(fontSize: 30))
        ]),
        const Image(
          image: AssetImage('../assets/images/img_1.png'),
          width: 200,
          height: 200,
        ),
      ]),
    );
  }
}
