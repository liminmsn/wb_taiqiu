import 'package:flutter/material.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(18).copyWith(top: 0,bottom: 0),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "三象追分记分",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Image.asset(
                "assets/images/logo.png",
                width: double.maxFinite,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.new_releases_rounded, color: Colors.green),
                  SizedBox(width: 10),
                  Text("最后一轮比赛开始！快去看看吧~"),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: Image.asset("assets/images/home_btn_$index.png"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
