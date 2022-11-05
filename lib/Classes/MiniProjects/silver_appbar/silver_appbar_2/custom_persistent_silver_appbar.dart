import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

class CustomPersistenSliverAppbar extends SliverPersistentHeaderDelegate {
  CustomPersistenSliverAppbar({
    required this.expandedHeight,
    required this.title,
  });

  final double expandedHeight;
  final String title;
  final double _elevation = 15;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        _buildSliverAppbar(context, shrinkOffset),
        _buildAppbar(context, shrinkOffset),
      ],
    );
  }

  // appbar
  Widget _buildAppbar(BuildContext context, double shrinkOffset) {
    return Opacity(
      opacity: appear(shrinkOffset),
      child: AppBar(
        title: Text(title),
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        actions: [IconItems().iconSettings],
        iconTheme: Theme.of(context).iconTheme,
        elevation: _elevation,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: ColorItems().colorWhite,
      ),
    );
  }

  // sliver appbar
  Widget _buildSliverAppbar(BuildContext context, double shrinkOffset) {
    return Opacity(
      opacity: disappear(shrinkOffset),
      child: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(title, style: Theme.of(context).textTheme.headlineLarge),
        ),
        Align(alignment: Alignment.bottomRight, child: IconItems().iconSettings)
      ]),
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  // sliver appbar height
  @override
  double get maxExtent => expandedHeight;

  // appbar height
  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
