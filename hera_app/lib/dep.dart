import 'package:flutter_config/flutter_config.dart';
import 'package:timeago/timeago.dart' as timeago;

Future<void> appDependenciesSetup() async {
  ///
  await FlutterConfig.loadEnvVariables();

  ///
  timeago.setLocaleMessages('fr', timeago.FrMessages());
  timeago.setLocaleMessages('fr', timeago.FrShortMessages());
}
