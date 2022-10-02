import 'package:flutter/material.dart';

class SilverAppbarView extends StatefulWidget {
  const SilverAppbarView({Key? key}) : super(key: key);

  @override
  State<SilverAppbarView> createState() => _SilverAppbarViewState();
}

class _SilverAppbarViewState extends State<SilverAppbarView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [],
      ),
    );
  }
}

class CustomSilverAppbarDelegate extends SliverPersistentHeaderDelegate {
  CustomSilverAppbarDelegate({required this.expandedHeight});

  final double expandedHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: const [],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
