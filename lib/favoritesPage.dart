import 'package:affinity_game/widgets/card.dart';
import 'package:affinity_game/widgets/favoriteCard.dart';
import 'package:affinity_game/widgets/userDetails.dart';
import 'package:flutter/material.dart';
import 'package:affinity_game/functions/favHandleTap.dart';

import 'data/user.data.dart';
class FavoritesPage extends StatelessWidget {
  const FavoritesPage ({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Let the ListView know how many items it needs to build.
      itemCount: usersFav.length,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        final item = usersFav[index];

         return FavoriteCard(user: item);
      },
    );
}
  }
