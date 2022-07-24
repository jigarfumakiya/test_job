import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_core/core/servies/navigation_service.dart';

import '../../di/injection.dart';

AppLocalizations appLocaleInstance() {
  return AppLocalizations.of(
      sl<NavigationService>().navigatorKey.currentContext!)!;
}
