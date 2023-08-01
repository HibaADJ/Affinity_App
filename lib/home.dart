import 'package:affinity_game/widgets/appBar.dart';
import 'package:affinity_game/widgets/bottomBar.dart';
import 'package:affinity_game/widgets/card.dart';
import 'package:flutter/material.dart';
import 'data/user.data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget  build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: fetchUser(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index){
                return UserCard(user: snapshot.data[index]);
              },
            );
          },
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}