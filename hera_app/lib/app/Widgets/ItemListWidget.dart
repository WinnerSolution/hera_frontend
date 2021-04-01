import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:softi_common/widgets.dart';

class ItemListWidget extends StatelessWidget {
  final void Function(int, int) itemCreated;
  final int itemCount;
  final int crossAxisCount;
  final Widget Function(int) itemBuilder;

  ItemListWidget({
    Key key,
    @required this.itemCount,
    @required this.itemCreated,
    @required this.itemBuilder,
    this.crossAxisCount = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: crossAxisCount,
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListItemCreationAware(
          itemCreated: () => itemCreated(index, itemCount),
          child: itemBuilder(index),
        );
      },
      staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
    );
  }
}
