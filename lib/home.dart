import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions : [
        IconButton(
          icon: const Icon(Icons.logout_sharp),
          tooltip: "LogOut",
          onPressed: (){}
        ),
        
      ]),
      body: Center(
        child: Column(
          crossAxisAlignment : CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcomme $email"),
            Text("ID ${widget.wid}").,
          ],
        )
      ),
    );
   
  }
}