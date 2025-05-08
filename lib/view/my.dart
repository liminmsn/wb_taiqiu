import 'package:flutter/material.dart';

class ViewMy extends StatefulWidget {
  const ViewMy({super.key});

  @override
  State<ViewMy> createState() => _ViewMyState();
}

class _ViewMyState extends State<ViewMy> {
  @override
  Widget build(BuildContext context) {
    final txtStyle = TextStyle(color: Colors.white);
    return Column(
      children: [
        Stack(
          children: [
            Container(
              clipBehavior: Clip.none,
              width: double.maxFinite,
              height: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).padding.top),
                  Text(
                    "个人中心",
                    style: txtStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipOval(
                          child: Container(
                            width: 80,
                            height: 80,
                            color: Colors.white,
                            child: FlutterLogo(size: 40),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "KoBe666",
                                  style: txtStyle.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Row(
                                  children: [
                                    Icon(Icons.place, color: Colors.white24),
                                    Text(
                                      "上海",
                                      style: txtStyle.copyWith(
                                        color: Colors.white24,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "sxid:88888",
                              style: txtStyle.copyWith(color: Colors.white24),
                            ),
                            Text(
                              "这个人很懒，还没有签名。",
                              style: txtStyle.copyWith(color: Colors.white24),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text("编辑资料", style: txtStyle),
                            Icon(Icons.arrow_right, color: txtStyle.color),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, MediaQuery.of(context).size.width * 0.45),
              child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.width * 0.5,
                padding: EdgeInsets.all(30).copyWith(right: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/card_lv.7.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("比赛信息", style: txtStyle.copyWith(fontSize: 24)),
                    Text(
                      "暂无信息",
                      style: txtStyle.copyWith(color: Colors.white54),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 10,
          ).copyWith(top: MediaQuery.of(context).size.width * 0.2),
          padding: EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 20,
          ).copyWith(bottom: 24),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyItem(url: "assets/images/my_3.png", label: "历史对局"),
              MyItem(url: "assets/images/my_4.png", label: "比赛记录"),
              MyItem(url: "assets/images/my_5.png", label: "正在进行"),
            ],
          ),
        ),
        Column(
          children: [MyItemLi(url: "assets/images/my_2.png", label: "意见反馈")],
        ),
        Column(
          children: [MyItemLi(url: "assets/images/my_1.png", label: "关于我们")],
        ),
        Column(
          children: [MyItemLi(url: "assets/images/my_0.png", label: "联系客服")],
        ),
      ],
    );
  }
}

class MyItemLi extends StatelessWidget {
  final String url;
  final String label;
  const MyItemLi({super.key, required this.url, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10).copyWith(bottom: 0),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(url, width: 30),
          SizedBox(width: 10),
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class MyItem extends StatelessWidget {
  final String url;
  final String label;
  const MyItem({super.key, required this.url, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset(url, width: 50), SizedBox(height: 4), Text(label)],
    );
  }
}
