import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refily/core/database/isar_database.dart';
import 'package:refily/core/database/isar_provider.dart';
import 'package:refily/core/providers/theme_provider.dart';
import 'package:refily/core/router/app_router.dart';
import 'package:refily/core/services/supabase_service.dart';
import 'package:refily/core/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final isar = await IsarDatabase.initialize();

  await dotenv.load(fileName: ".env");
  await SupabaseService.initialize();
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
        isarProvider.overrideWithValue(isar),
      ],

      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeProvider);
    return MaterialApp.router(
      routerConfig: AppRouter.goRouter,
      debugShowCheckedModeBanner: false,
      title: 'Refily',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
    );
  }
}
