import 'package:flutter/material.dart';

class CenterTab extends StatefulWidget {
  const CenterTab({Key? key}) : super(key: key);

  @override
  _CenterTabState createState() => _CenterTabState();
}

class _CenterTabState extends State<CenterTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                TopRowChild(
                  text: "Home",
                  icon: Icon(
                    Icons.home,
                  ),
                  bgColor: Colors.blue,
                ),
                TopRowChild(
                  text: "Roof",
                  icon: Icon(Icons.roofing),
                  bgColor: Colors.pink,
                ),
                TopRowChild(
                  text: "Roof",
                  icon: Icon(Icons.roofing),
                  bgColor: Colors.blueGrey,
                ),
                TopRowChild(
                  text: "Roof",
                  icon: Icon(Icons.roofing),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                TopRowChild(
                  text: "Roof",
                  icon: Icon(Icons.roofing),
                  bgColor: Colors.red,
                ),
                TopRowChild(
                  text: "Roof",
                  icon: Icon(Icons.room_rounded),
                  bgColor: Colors.green,
                ),
                TopRowChild(
                  text: "Roof",
                  icon: Icon(Icons.roofing),
                  bgColor: Colors.blue,
                ),
                TopRowChild(
                  text: "Roof",
                  icon: Icon(Icons.roofing),
                  bgColor: Colors.pink,
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              margin: const EdgeInsets.all(5),
              child: Column(children: [
                const Padding(padding: EdgeInsets.only(top: 20)),
                Text("Roof"),
                Icon(Icons.roofing),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class TopRowChild extends StatelessWidget {
  const TopRowChild(
      {Key? key,
      required this.text,
      required this.icon,
      this.bgColor = Colors.white})
      : super(key: key);
  final String text;
  final Icon icon;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 70,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(shape: BoxShape.circle, color: bgColor),
      child: Column(children: [
        const Padding(padding: EdgeInsets.only(top: 20)),
        Text(text),
        icon,
      ]),
    );
  }
}
