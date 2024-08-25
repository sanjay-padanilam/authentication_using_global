import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 63, 177, 235),
        title: Text("HOME SCREEN"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.pexels.com/photos/25430669/pexels-photo-25430669/free-photo-of-welcome-sign-in-las-vegas.jpeg?auto=compress&cs=tinysrgb&w=600"))),
      ),
    );
  }
}
