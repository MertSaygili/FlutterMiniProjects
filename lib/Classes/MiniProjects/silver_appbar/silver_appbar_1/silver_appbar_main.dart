import 'package:flutter/material.dart';

class SilverAppbarView extends StatefulWidget {
  const SilverAppbarView({Key? key}) : super(key: key);

  @override
  State<SilverAppbarView> createState() => _SilverAppbarViewState();
}

class _SilverAppbarViewState extends State<SilverAppbarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: CustomSilverAppbarDelegate(expandedHeight: 200),
            pinned: true,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSilverAppbarDelegate extends SliverPersistentHeaderDelegate {
  CustomSilverAppbarDelegate({required this.expandedHeight});

  final double expandedHeight;
  final Icon _iconSettings = const Icon(Icons.settings);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        _buildAppbar(shrinkOffset, context),
        _buildSliverAppbar(shrinkOffset, context),
      ],
    );
  }

  Widget _buildAppbar(double shrinkOffset, BuildContext context) {
    return Opacity(
      opacity: appear(shrinkOffset),
      child: AppBar(
        title: const Text('Title'),
        actions: [_iconSettings],
      ),
    );
  }

  Widget _buildSliverAppbar(double shrinkOffset, BuildContext context) {
    return Opacity(
      opacity: disappear(shrinkOffset),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Text('Title', style: Theme.of(context).textTheme.headline3),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: _iconSettings,
          )
        ],
      ),
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
