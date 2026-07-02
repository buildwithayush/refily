import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refily/core/providers/theme_provider.dart';
import 'package:refily/core/theme/theme_extension.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  ConsumerState<SettingScreen> createState() => _SettingState();
}

class _SettingState extends ConsumerState<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Setting', style: context.textTheme.displayLarge),
      ),
      body: ListTile(
        title: Text('Dark Mode', style: context.textTheme.titleLarge),
        trailing: IconButton(
          icon: Icon(
            ref.watch(themeProvider) ? Icons.light_mode : Icons.dark_mode,
          ),
          onPressed: () {
            ref.read(themeProvider.notifier).toggleTheme();
          },
        ),
      ),
    );
  }
}
