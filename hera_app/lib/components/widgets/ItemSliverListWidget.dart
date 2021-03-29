import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:softi_common/widgets.dart';

class ItemSliverListWidget extends StatelessWidget {
  final void Function(int, int) itemCreated;
  final int itemCount;
  final int crossAxisCount;
  final double childAspectRatio;
  final Widget Function(int) itemBuilder;

  ItemSliverListWidget({
    Key key,
    this.itemCount,
    this.itemCreated,
    this.itemBuilder,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ListItemCreationAware(
            itemCreated: () => itemCreated(index, itemCount),
            child: itemBuilder(index),
          );
        },
        childCount: itemCount,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
      ),
    );
  }
}
