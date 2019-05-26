import 'package:flutter/material.dart';

/// 首页顶部 Bar
class AirAsiaBar extends StatelessWidget {
  final double height;
  const AirAsiaBar({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: height,
            decoration: BoxDecoration(
                // 设置颜色线性渐变
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red, const Color(0xFFE64C85)])),
          ),
          AppBar(
            // 设置 AppBar 的背景颜色透明, AppBar 的高度是全屏的
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
            title: Text('AirAsia',
                style: TextStyle(
                    fontFamily: 'NothingYouCouldDo', // 引用自定义字体
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
