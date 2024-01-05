import 'package:flutter/material.dart';
import 'package:flutter_getstream_chat/core/utils/utils.dart';
import 'package:flutter_getstream_chat/presentation/screens/screens.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.red,
          child: Text(
            'L',
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: Colors.white),
          ),
        ),
        onTap: () {
          //set current user as null so application session is null
          setCurrentUser(null);

          //navigate to select user
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const SelectUser(),
            ),
            (Route<dynamic> route) => false,
          );
        },
        title: Text(
          'Logout',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
