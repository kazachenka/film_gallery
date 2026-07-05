import 'package:flutter/material.dart';

class GlobalSettingsScreen extends StatelessWidget {
  const GlobalSettingsScreen({super.key});

  void _showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      showDragHandle: true,
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Select Language',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile<String>(
                title: const Text('English'),
                value: 'en',
              ),
              RadioListTile<String>(
                title: const Text('Arabic'),
                value: 'ar',
              ),
            ],
          ),
        );
      },
    );
  }

  void _showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      showDragHandle: true,
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Select Theme',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile<String>(
                title: const Text('Light'),
                value: 'light',
              ),
              RadioListTile<String>(
                title: const Text('Dark'),
                value: 'dark',
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        children: [
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Language'),
            subtitle: const Text('English'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => _showLanguageBottomSheet(context),
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.palette_outlined),
            title: const Text('Theme'),
            subtitle: const Text('Light'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => _showThemeBottomSheet(context),
          ),
        ],
      ),
    );
  }
}