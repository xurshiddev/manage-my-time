import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                image: AssetImage('assets/photo_2024-05-09_19-11-39.jpg'),
                fit: BoxFit.cover,
              ),
            );
          }),
          title: const Text("Hi, Xurshid!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ));
  }
}
