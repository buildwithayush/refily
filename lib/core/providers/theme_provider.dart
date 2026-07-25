import 'package:refily/core/data/service/shared_prefs_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_provider.g.dart';

@riverpod
SharedPreferences sharedPreferences(Ref ref) {
  throw UnimplementedError();
}

@riverpod
SharedPrefsService sharedPrefsService(Ref ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return SharedPrefsService(prefs);
}

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  
  @override
  bool build() {
  final prefsService = ref.watch(sharedPrefsServiceProvider);
    return prefsService.getThemeMode();
  }

  void toggleTheme() async {
    final newState = !state;
    state = newState;
    await ref.read(sharedPrefsServiceProvider).setThemeMode(newState);
  }
}
