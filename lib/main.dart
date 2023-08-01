import 'package:affinity_game/data/user.data.dart';
import 'package:affinity_game/welcomPage.dart';
import 'package:affinity_game/widgets/usersList.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'widgets/bottomBar.dart';
import 'widgets/appBar.dart';

void main() {
  fetchUser();
  runApp(
    const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          //bottomNavigationBar: BottomBar(),
          body: Welcome(),//UsersList2(),
        ),
      ),
    ),
  );
}