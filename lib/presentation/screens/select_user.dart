import 'package:flutter/material.dart';
import 'package:flutter_getstream_chat/core/utils/utils.dart';
import 'package:flutter_getstream_chat/presentation/screens/screens.dart';

import '../../core/mock_data/mock_data.dart';
import '../../domain/models/models.dart';

class SelectUser extends StatefulWidget {
  const SelectUser({super.key});

  @override
  State<SelectUser> createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select User')),
      body: _listOfUser(),
    );
  }

  Widget _listOfUser() {
    return Column(
      children: contactList.map((user) => _listItem(user)).toList(),
    );
  }

  Widget _listItem(User user) {
    return ListTile(
      onTap: () {
        //set current user for application session
        setCurrentUser(user);

        //navigate to home
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
      leading: CircleAvatar(
        radius: 20.0,
        backgroundImage: NetworkImage(user.profileImg),
      ),
      title: Text(
        user.name,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
