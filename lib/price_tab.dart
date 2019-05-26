import 'package:flutter/material.dart';

class PriceTab extends StatefulWidget {
  final double height;
  PriceTab({Key key, this.height}) : super(key: key);

  _PriceTabState createState() => _PriceTabState();
}

class _PriceTabState extends State<PriceTab> {
  final double _initialPlanePaddingBottom = 16.0;
  double get _planeSize => 60.0;
  double get _planeTopPadding => widget.height - _initialPlanePaddingBottom - _planeSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[_buildPlane()],
      ),
    ) ;
  }

  Widget _buildPlane(){
    return Positioned(
      top: _planeTopPadding,
      child: Column(
        children: <Widget>[
          _buildPlaneIcon()
        ],
      ),
    );
  }

  Widget _buildPlaneIcon(){
    return Icon(
      Icons.airplanemode_active,
      color: Colors.red,
      size: _planeSize,
    );
  }
}