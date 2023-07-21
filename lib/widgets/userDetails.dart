import 'dart:ffi';

import 'package:affinity_game/functions/favHandleTap.dart';
import 'package:affinity_game/home.dart';
import 'package:affinity_game/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:affinity_game/data/user.data.dart';
import 'package:affinity_game/widgets/userDetails.dart';

class UserDetails extends StatefulWidget {
  final User user;
  const UserDetails({super.key, required this.user});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
   bool favStat = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
        children: <Widget>[
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  //Navigator.of(context).pop(widget.user.isFav);
                  _sendDataBack(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.user.isFav= handleFavTap(widget.user);
                    favStat = widget.user.isFav;
                  });
                },
                icon: Icon(Icons.favorite,
                  color: (widget.user.isFav) ? Colors.red : Colors.grey,
                ),
              ),

            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 102,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(widget.user.picUrl),
                    radius: 100,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                Text(
                  widget.user.firstName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Email: ' + widget.user.email),
                Text('Phone: ' + widget.user.phone),
                Text('Website: ' + widget.user.website),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              children: <Widget>[
                Text('Address'),
              ],
            ),
          ),
          const Divider(
            height: 20,
            thickness: 3,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              children: <Widget>[
                Text(
                  'Street: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(widget.user.street),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 5),
            child: Row(
              children: <Widget>[
                Text(
                  'City: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(widget.user.city),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                Text(
                  'Zip Code: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(widget.user.zipcode),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: <Widget>[Text('Company')],
            ),
          ),
          const Divider(
            height: 20,
            thickness: 3,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              children: <Widget>[
                Text(
                  'Name: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(widget.user.companyName),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: <Widget>[
                Text(
                  'Catch Phrase: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(widget.user.catchPhrase),
              ],
            ),
          ),
        ],
      ),
    ));
  }
  void _sendDataBack(BuildContext context) {
    Navigator.pop(context, favStat);
  }
}
