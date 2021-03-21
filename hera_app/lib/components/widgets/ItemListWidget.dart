import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:softi_common/services.dart';

class ItemListWidget extends StatelessWidget {
  final void Function(int, int) itemCreated;
  final int itemCount;
  final Widget Function(int) itemBuilder;

  ItemListWidget({
    Key key,
    this.itemCount,
    this.itemCreated,
    this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemCount: itemCount,
    //   itemBuilder: (BuildContext context, int index) {
    //     return ListItemCreationAware(
    //       itemCreated: () => itemCreated(index, itemCount),
    //       child: itemBuilder(index),
    //       // child: ObxValue<Rx<T>>(itemBuilder, recordList[index].obs),
    //     );
    //   },
    // );

    return StaggeredGridView.countBuilder(
      crossAxisCount: 2,

      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListItemCreationAware(
          itemCreated: () => itemCreated(index, itemCount),
          child: itemBuilder(index),
          // child: ObxValue<Rx<T>>(itemBuilder, recordList[index].obs),
        );
      },
      staggeredTileBuilder: (int index) => StaggeredTile.fit(1),

      // staggeredTileBuilder: (int index) => new StaggeredTile.count(2, index.isEven ? 2 : 1),
      // mainAxisSpacing: 4.0,
      // crossAxisSpacing: 4.0,
    );
  }
}
