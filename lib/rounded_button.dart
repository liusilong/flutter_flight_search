import 'package:flutter/material.dart';

/// 圆形按钮
class RoundedButton extends StatelessWidget {
  final String text; // 按钮内容
  final bool selected; // 是否选中
  final GestureTapCallback onTap; // 点击回调
  const RoundedButton({Key key, this.text, this.selected = false, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = selected ? Colors.white : Colors.transparent;
    Color textColor = selected ? Colors.red : Colors.white;
    /// 这里使用的 Expand ，但是如果想创建一个可复用的 widget，那么就不要使用 Expand
    /// 这里只是为了方便
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 36.0,
            decoration: BoxDecoration(
                color: backgroundColor,
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(30.0)),
            child: Center(
              child: Text(text, style: TextStyle(color: textColor)),
            ),
          ),
        ),
      ),
    );
  }
}
