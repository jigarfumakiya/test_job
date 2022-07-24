import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_task/core/routes/routes.dart';
import 'package:flutter_task/di/injection.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_core/core/servies/navigation_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());

  /// Inject all dependencies
  await init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This pages is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      navigatorKey: sl<NavigationService>().navigatorKey,
      supportedLocales: const [
        Locale('en', ''), // English, no country code
      ],

      /// All routes
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RoutesPath.landing,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.robotoTextTheme()),
    );
  }
}
