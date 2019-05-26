import 'package:flutter/material.dart';
// 首页定于 bar
import 'air_asia_bar.dart';
// 圆形的按钮
import 'rounded_button.dart';
// 内容显示 card
import 'content_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var top = MediaQuery.of(context).padding.top;
    print('top = $top');
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // 顶部 Bar
          AirAsiaBar(height: 210.0),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 40.0),
              child: Column(
                children: <Widget>[
                  /// 顶部三个按钮
                  _buildButtonsRow(),
                  Expanded(child: ContentCard(),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildButtonsRow() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          RoundedButton(text: 'ONE WAY'),
          RoundedButton(text: 'ROUND'),
          RoundedButton(text: 'MULTICITY', selected: true,),
        ],
      ),
    );
  }
}
