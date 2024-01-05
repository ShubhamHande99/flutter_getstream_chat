import 'package:flutter/material.dart';

import '../../core/mock_data/mock_data.dart';
import '../../core/utils/utils.dart';
import '../../domain/models/models.dart';

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({super.key});

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts')),
      body: _listOfContacts(),
    );
  }

  Widget _listOfContacts() {
    return Column(
      children: contactList
          .where((element) => element != currentUser)
          .toList()
          .map((e) => _listItem(e))
          .toList(),
    );
  }

  Widget _listItem(User user) {
    return ListTile(
      onTap: () {
        //set current user for application session
        //setCurrentUser(user);

        //navigate to home
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const HomeScreen(),
        //   ),
        // );
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
