import 'package:cheat_sheets/src/router/app_router.dart';
import 'package:cheat_sheets/src/theme/dark_theme.dart';
import 'package:cheat_sheets/src/theme/light_theme.dart';
import 'package:cheat_sheets/src/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(isDarkModeProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Cheat Sheets',
      theme: isDark ? darkTheme : lightTheme,
    );
  }
}
