import 'package:flutter/material.dart';

import 'reusablesource.dart';
import 'selection.dart';

void main() {
  runApp(
    MaterialApp(
      home: WelcomePage(),
      routes: {
        '1': (context) => SelectionPage(),
        //MYQ TODO 2024/1/19:补充其他页面的routes，
      },
    ),
  );
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '焊接专项计算器',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      body:
          //MYQ TODO 2024/1/19:添加一个大标题
          Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '1');
              },
              child: FirstSelectionCard(
                titletext: '创建新计算',
                describetext: '计算一组新的数据',
              ),
            )),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: GestureDetector(
              onTap: () {
                //MYQ TODO 2024/1/19:跳转至数据库页面
              },
              child: FirstSelectionCard(
                titletext: '查看保存的数据',
                describetext: '查看之前计算保存的结果',
              ),
            )),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: GestureDetector(
              onTap: () {
                //MYQ TODO 2024/1/19:  退出软件
              },
              child: FirstSelectionCard(
                titletext: '退出软件',
                describetext: '',
              ),
            )),
          ],
        ),
      ),
    );
  }
}
