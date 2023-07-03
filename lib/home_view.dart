import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'settings_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final al = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(al.home),
        actions: [
          IconButton(
            onPressed: SettingsController().switchLocale,
            icon: const Icon(Icons.swap_horiz_rounded),
          )
        ],
      ),
      body: Center(
        child: Text(al.helloWorld),
      ),
    );
  }
}
