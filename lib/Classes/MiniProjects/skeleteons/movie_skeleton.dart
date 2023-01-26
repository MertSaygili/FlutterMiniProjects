import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class MovieSkeletonPage extends StatelessWidget {
  const MovieSkeletonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _imageSkeleton(context),
          _rateSkeleton(),
          _skeletonTitle(),
          _rowText(),
          _skeletonParagraph(),
          _allCastsSkeleton(),
        ],
      ),
    );
  }

  Padding _allCastsSkeleton() {
    return Padding(
      padding: _padding(),
      child: Row(
        children: [
          _castSkeleton(),
          _castSkeleton(),
          _castSkeleton(),
          _castSkeleton(),
        ],
      ),
    );
  }

  Padding _castSkeleton() {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          const SkeletonAvatar(style: SkeletonAvatarStyle(height: 75, width: 75, shape: BoxShape.circle)),
          SkeletonLine(style: SkeletonLineStyle(height: 20, width: 75, borderRadius: _radius())),
        ],
      ),
    );
  }

  SkeletonLine _skeletonTitle() => SkeletonLine(style: SkeletonLineStyle(padding: _padding(), height: 25, width: 200, borderRadius: _radius()));

  SkeletonParagraph _skeletonParagraph() {
    return SkeletonParagraph(
      style: SkeletonParagraphStyle(
        padding: _padding(),
        spacing: 8,
        lines: 5,
        lineStyle: SkeletonLineStyle(borderRadius: _radius()),
      ),
    );
  }

  Padding _rowText() {
    return Padding(
      padding: _padding(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: SkeletonLine(
              style: SkeletonLineStyle(height: 20, width: 150, borderRadius: _radius()),
            ),
          ),
          Expanded(
            flex: 1,
            child: SkeletonLine(
              style: SkeletonLineStyle(height: 20, width: 100, borderRadius: _radius()),
            ),
          ),
        ],
      ),
    );
  }

  SkeletonLine _rateSkeleton() {
    return SkeletonLine(
      style: SkeletonLineStyle(
        padding: _padding(),
        height: 50,
        width: 70,
        borderRadius: _radius(),
      ),
    );
  }

  BorderRadius _radius() => BorderRadius.circular(15);

  EdgeInsets _padding() => const EdgeInsets.symmetric(horizontal: 30, vertical: 10);

  SkeletonItem _imageSkeleton(BuildContext context) {
    return SkeletonItem(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
          color: Colors.grey,
        ),
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
