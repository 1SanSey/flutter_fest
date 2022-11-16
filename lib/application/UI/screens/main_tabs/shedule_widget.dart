import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fest/resources/resources.dart';

class SheduleWidget extends StatelessWidget {
  const SheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.of(context).padding.top;
    return CustomScrollView(
      slivers: [
        const _LogoWidget(),
        SliverPersistentHeader(
          pinned: true,
          delegate: _SliverAppBarDelegate(topInset: topInset),
        ),
      ],
    );
  }
}

class _LogoWidget extends StatelessWidget {
  const _LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 204,
        child: Stack(children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(AppImages.sheduleBg),
          ),
          Positioned(
            left: 20,
            top: 84,
            child: Image.asset(AppImages.sheduleFfLogo),
          ),
          Positioned(
            right: 20,
            top: 64,
            child: Image.asset(AppImages.sheduleSurfLogo),
          ),
        ]),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double _height = 56;
  final double topInset;

  _SliverAppBarDelegate({required this.topInset});

  @override
  double get minExtent => _height + topInset;
  @override
  double get maxExtent => _height + topInset;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return _SectionButtonsWidget(
      topInset: topInset,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class _SectionButtonsWidget extends StatelessWidget {
  final double topInset;
  const _SectionButtonsWidget({super.key, required this.topInset});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            ElevatedButton(onPressed: () {}, child: Text('Секция $index')),
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: 10);
  }
}
