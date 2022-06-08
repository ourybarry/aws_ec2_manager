import 'package:flutter/material.dart';

class CollapsibleContainer extends StatefulWidget {
  const CollapsibleContainer({Key? key}) : super(key: key);

  @override
  State<CollapsibleContainer> createState() => _CollapsibleContainerState();
}

class _CollapsibleContainerState extends State<CollapsibleContainer>
    with SingleTickerProviderStateMixin {
  bool _visible = true;
  late final AnimationController expandController;
  late final Animation<double> animation;
  @override
  void initState() {
    prepareAnimations();
    _runExpandCheck();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(shrinkWrap: true, slivers: [
      SliverPersistentHeader(
        delegate: SectionHeaderDelegate('Section B', () => _toggleVisible()),
        pinned: true,
      ),
      // SizeTransition(sizeFactor: animation)
      SliverToBoxAdapter(
        child: SizeTransition(
          sizeFactor: animation,
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) => ListTile(
                    title: Text('Head'),
                    subtitle: Text('sub'),
                  )),
              separatorBuilder: (context, index) => Divider(),
              itemCount: 24),
        ),
      )
    ]);
  }

  _toggleVisible() {
    setState(() {
      _visible = !_visible;
    });
    _runExpandCheck();
  }

  void prepareAnimations() {
    expandController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
  }

  void _runExpandCheck() {
    if (_visible) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }
}

class SectionHeaderDelegate extends SliverPersistentHeaderDelegate {
  final String title;
  final double height;
  dynamic tapListener;

  SectionHeaderDelegate(this.title, this.tapListener, [this.height = 50]);

  @override
  Widget build(context, double shrinkOffset, bool overlapsContent) {
    return GestureDetector(
      onTap: tapListener,
      child: Container(
        color: Theme.of(context).primaryColor,
        alignment: Alignment.center,
        child: Text(title),
      ),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
