import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/user.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = User('Alex', 28);
    return Center(
      child: ElevatedButton(
        onPressed: () {
          context.push('/settings/profile', extra: user);
        },
        child: const Text('Go to Profile'),
      ),
    );
  }
}
