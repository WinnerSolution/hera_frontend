import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:hera_app/controllers/app_controller.dart';
import 'package:hera_app/routes/routes.dart';
import 'package:hera_core/hera_core.dart';
import 'package:nested/nested.dart';
import 'package:softi_common/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///
  await coreDependenciesSetup();

  ///
  runApp(CivilioApp());
}

class CivilioApp extends StatelessWidget {
  final AppState con = Get.put(AppState(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      // ROUTING
      getPages: Routes.pages,
      initialRoute: Routes.home,
      // initialBinding: BindingsBuilder.put(() => AppState()),

      // LOCALES
      translationsKeys: translations(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('fr'),
      ],
      locale: con.locale,
      fallbackLocale: const Locale('en'),

      // THEMES
      // darkTheme: getTheme(),
      // theme: appTheme,
      // themeMode: ThemeMode.dark, //con.themeMode,

      // MANAGERS (WRAPPERS)
      builder: (context, app) => Nested(
        children: [
          // BackgroundServiceManager([
          //   Get.find<ILocationService>(),
          // ]),
          HideKeyboardManager(),
          LoadingManager()
        ],

        // Mount the app here
        child: app,
      ),
    );
  }
}
