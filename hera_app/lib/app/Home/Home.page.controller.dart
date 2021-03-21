import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:softi_common/core.dart';

class HomePageController extends BaseController with IndexControllerMixin {
  PlatformTabController tabController;

  @override
  void onInit() {
    super.onInit();
    index(2);
    tabController = PlatformTabController(initialIndex: index());
  }
}
