import 'package:flutter/material.dart';

class ViewMy extends StatefulWidget{
  const ViewMy({super.key});

  @override
  State<ViewMy> createState() => _ViewMyState();
}

class _ViewMyState extends State<ViewMy> {
  @override
  Widget build(BuildContext context) {
    return Text("我的");
  }
}