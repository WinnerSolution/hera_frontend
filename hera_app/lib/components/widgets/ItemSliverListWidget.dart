import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:softi_common/widgets.dart';

class ItemSliverListWidget extends StatelessWidget {
  final void Function(int, int) itemCreated;
  final int itemCount;
  final Widget Function(int) itemBuilder;

  ItemSliverListWidget({
    Key key,
    this.itemCount,
    this.itemCreated,
    this.itemBuilder,
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
        crossAxisCount: 2,
        childAspectRatio: 1.3,
      ),
    );
  }
}
