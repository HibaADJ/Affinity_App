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
    return FutureBuilder(
      future: fetchUser(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index){
              return UserCard(user: snapshot.data[index]);
            },
        );
      },
    );

  }
}

// return  Padding(
// padding: const EdgeInsets.all(15.0),
// child: Stack(
// children: <Widget>[
// Container(
// height: 150,
// width: double.infinity,
// decoration: BoxDecoration(
// color: Colors.grey[300],
// borderRadius: BorderRadius.circular(_radius),
// ),
// ),
// TextButton(
// onPressed: (){},
// child: Image.network('https://img.freepik.com/premium-vector/avatar-woman-with-brown-hair-red-top_825692-913.jpg?w=2000',
// height: 130
// ,)
// ,),
// const Center(
// child: Column(
// children: <Widget>[
// Text('here goes Name'),
// Text('here goes email'),
// Text('here goes phone'),
// ],
// ),
// ),
// Positioned(
// top: 5,
// right: 5,
// child: Container(
// decoration: BoxDecoration(
// color: Colors.green,
// borderRadius: BorderRadius.circular(10),
// ),
// child: TextButton(
// onPressed: (){},
// child: const Icon(
// Icons.favorite_border,
// color: Colors.white,
// size: 30,
// ),
// ),
// ),
// )
// ],
// ),
// );