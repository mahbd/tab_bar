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
                    color: Colors.black,
                  ),
                  bgColor: Colors.blue,
                ),
                TopRowChild(
                  text: "Roof",
                  icon: Icon(
                    Icons.roofing,
                    color: Colors.black,
                  ),
                  bgColor: Colors.pink,
                ),
                TopRowChild(
                  text: "Room",
                  icon: Icon(
                    Icons.room,
                    color: Colors.black,
                  ),
                  bgColor: Colors.blueGrey,
                ),
                TopRowChild(
                  text: "Email",
                  icon: Icon(
                    Icons.contact_mail,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                TopRowChild(
                  text: "Map",
                  icon: Icon(
                    Icons.map,
                    color: Colors.black,
                  ),
                  bgColor: Colors.red,
                ),
                TopRowChild(
                  text: "Facebook",
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.black,
                  ),
                  bgColor: Colors.green,
                ),
                TopRowChild(
                  text: "Golf",
                  icon: Icon(
                    Icons.golf_course,
                    color: Colors.black,
                  ),
                  bgColor: Colors.blue,
                ),
                TopRowChild(
                  text: "Transfer",
                  icon: Icon(
                    Icons.transfer_within_a_station,
                    color: Colors.black,
                  ),
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
              child: Column(children: const [
                Padding(padding: EdgeInsets.only(top: 20)),
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
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NavigatedPage(text: text)),
        );
      },
      child: Container(
        height: 80,
        width: 70,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(shape: BoxShape.circle, color: bgColor),
        child: Column(children: [
          const Padding(padding: EdgeInsets.only(top: 20)),
          Text(text, style: const TextStyle(color: Colors.black)),
          icon,
        ]),
      ),
    );
  }
}

class NavigatedPage extends StatelessWidget {
  const NavigatedPage({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Text(text, style: const TextStyle(color: Colors.black, fontSize: 40)),
    );
  }
}
