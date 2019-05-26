import 'package:flutter/material.dart';
import 'multicity_input.dart';

class ContentCard extends StatefulWidget {
  ContentCard({Key key}) : super(key: key);

  _ContentCardState createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(8.0),
      // DefaultTabController 会默认为我们创建一个 TabController，不用明确指定
      child: DefaultTabController(
        length: 3,
        // LayoutBuilder 在创建子 widget 的时候会将自己的 约束 传递下去
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return Column(
              children: <Widget>[
                _buildTabBar(),
                _buildContentContainer(viewportConstraints)
              ],
            );
          },
        ),
      ),
    );
  }
  /// 创建 Tab
  /// 这里的 TabBar 里面使用的 Stack 包裹主要是为了让 TabBar 下面有一条灰色的线条
  Widget _buildTabBar() {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          top: null, // 注意 top 需要设置成 null，不能为 0
          child: Container(
            height: 2.0,
            color: Color(0xFFEEEEEE),
          ),
        ),
        TabBar(
          tabs: <Widget>[
            Tab(text: 'Flight'),
            Tab(text: 'Train'),
            Tab(text: 'Bus'),
          ],
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
        )
      ],
    );
  }

  Widget _buildContentContainer(BoxConstraints viewportContraints){
    return Expanded(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: viewportContraints.maxHeight - 48.0
          ),
          child: IntrinsicHeight(
            child: _buildMulticityTab(),
          ),
        ),
      ),
    );
  }

  Widget _buildMulticityTab(){
    return Column(
      children: <Widget>[
        MulticityInput(),
        Expanded(child: Container(color: Colors.blue,),),
        Padding(padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.timeline, size: 36.0,),
        ),)
      ],
    );
  }
}
