import 'package:affinity_game/functions/favHandleTap.dart';
import 'package:flutter/material.dart';
import 'package:affinity_game/data/user.data.dart';

import '../data/user.data.dart';
import 'card.dart';
import 'favoriteCard.dart';
class UsersList extends StatelessWidget {
  const UsersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Let the ListView know how many items it needs to build.
      itemCount: listUsers.length,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        final item = listUsers[index];

        return UserCard(user: item);
      },
    );
  }
}
