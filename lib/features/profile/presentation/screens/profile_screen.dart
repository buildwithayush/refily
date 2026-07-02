import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:refily/core/router/app_routes.dart';
import 'package:refily/core/theme/theme_extension.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Profile', style: context.textTheme.bodyLarge),
            const Spacer(),
            IconButton(onPressed: () {
              context.push(AppRoutes.settings);
            }, icon: const Icon(Icons.settings)),
          ],
        ),
      ),
      body: Center(
        child: Text('Profile Screen', style: context.textTheme.titleMedium),
      ),
    );
  }
}
