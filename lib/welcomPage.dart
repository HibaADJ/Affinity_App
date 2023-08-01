import 'package:affinity_game/data/user.data.dart';
import 'package:affinity_game/home.dart';
import 'package:affinity_game/widgets/card.dart';
import 'package:affinity_game/widgets/usersList.dart';
import 'package:flutter/material.dart';
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          const CircleAvatar(
            backgroundColor: Colors.grey,
            radius:150,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/Affinity.png'),
              radius: 147,
            ),
          ),
          TextButton(
            onPressed: (){
              Navigator.push(context,  MaterialPageRoute(
                builder: (context) => Home(),
              ),
              );
            },
            child: const Text(
              'Tap here to start',
              style: TextStyle(
                fontSize: 30,
              ),),
          )
        ],
      ),
    );
  }
}
