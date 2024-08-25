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
          title: const Text(
            "Hi, Xurshid!",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900, color: Color.fromARGB(255, 17, 18, 23)),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ));
  }
}

class TaskscreenAppBar extends StatelessWidget {
  const TaskscreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        foregroundColor: Colors.white,
        title: const ListTile(
          title: Text(
            "Personal taks",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          subtitle: Text(
            "You have 3 tasks for today",
            style: TextStyle(color: Colors.white60),
          ),
        ),
        backgroundColor:  const Color.fromARGB(255, 28, 29, 33));
  }
}
