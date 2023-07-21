import 'package:flutter/material.dart';
import 'home.dart';
import 'widgets/bottomBar.dart';
import 'widgets/appBar.dart';

void main() {
  runApp(
     MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://img.freepik.com/premium-vector/avatar-woman-with-brown-hair-red-top_825692-913.jpg?w=2000'),
              radius: 50,
            ),
            title: const Text.rich(
                TextSpan(
                    children: [
                      TextSpan(
                          text: 'Adjmi Hibat\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      TextSpan(
                          text: 'adjmihibat@gmail.com',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          )
                      )
                    ]
                )
            ),
            centerTitle: false,
            backgroundColor: Colors.grey[300],
            toolbarHeight: 100,
          ),
          body: Home(),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    ),
  );
}
