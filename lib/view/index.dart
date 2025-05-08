import 'package:flutter/material.dart';
import 'package:wb_taiqiu/view/home.dart';
import 'package:wb_taiqiu/view/my.dart';

class IndexView extends StatefulWidget {
  const IndexView({super.key});

  @override
  State<IndexView> createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  final List<Widget> viewPage = [ViewHome(), ViewMy()];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: () {
        return viewPage[_currentIndex];
      }(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        // type: BottomNavigationBarType.fixed, // 这点很关键
        selectedFontSize: 14,
        unselectedFontSize: 14, // 设置相同大小
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
        ],
      ),
    );
  }
}
