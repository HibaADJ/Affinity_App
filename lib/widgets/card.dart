import 'package:affinity_game/data/user.data.dart';
import 'package:affinity_game/functions/favHandleTap.dart';
import 'package:affinity_game/widgets/userDetails.dart';
import 'package:flutter/material.dart';
class UserCard extends StatefulWidget {
  final User user ;
  const UserCard({super.key,
    required this.user,
  });
  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.only(top: 7, left: 20,bottom: 7,right: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        height: 120,
        child: Row(
          children: [
            Expanded(
              flex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      //Navigator.push( context,
                      //MaterialPageRoute(builder: (context) =>  UserDetails(user: widget.user)),
                      _awaitReturnValueFromSecondScreen(context);
                      //);
                    },
                    iconSize: 84,
                    splashRadius: 20,
                    icon: Image.network(widget.user.picUrl,
                      //scale: 20,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(widget.user.firstName,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        Text(widget.user.email),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone,
                        ),
                        Text(widget.user.phone),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 10),
              child: Expanded(
                flex: 0,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 40,
                      width: 40,
                      child:IconButton(
                        splashRadius: 10,
                        onPressed: ()  {
                          setState(() {
                            widget.user.isFav = handleFavTap(widget.user);
                          });
                        },
                        icon:  Icon(Icons.favorite,
                          color: (widget.user.isFav) ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void _awaitReturnValueFromSecondScreen(BuildContext context) async {

    // start the SecondScreen and wait for it to finish with a result
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UserDetails(user: widget.user),
        ));

    // after the SecondScreen result comes back update the Text widget with it
    setState(() {
      widget.user.isFav = result;
    });
  }
}