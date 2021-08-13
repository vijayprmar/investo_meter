import 'package:flutter/material.dart';
import 'package:investo_meter/types.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Color themeColor = const Color(0xfbb5367FF);
  Color color2 = const Color(0xfbb00D09C);
  Color color1 = const Color(0xfbb5367FF);

  List type = [
    Type(icon: "assets/images/ic_sip.png", name: "SIP Calculator"),
    Type(icon: "assets/images/ic_money_bag.png", name: "Lumpsum Calculator"),
    Type(icon: "assets/images/ic_swp.png", name: "SWP Calculator"),
    Type(
        icon: "assets/images/ic_dollar.png",
        name: "Mutual Fund Returns Calculator"),
    Type(icon: "assets/images/ic_girl.png", name: "Sukanya Samriddhi Yojana")
  ];

  @override
  Widget build(BuildContext context) {
    final title = "Home";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
          appBar: AppBar(title: Text(title), backgroundColor: themeColor),
          body: ListView.builder(
              padding: const EdgeInsets.all(4),
              itemCount: type.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.only(left: 8),
                  height: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(type[index].icon, height: 60, width: 60),
                      SizedBox(width: 10),
                      Flexible(
                        child: Text(type[index].name,
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [color1, color2]),
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                );
              })),
    );
  }
}
