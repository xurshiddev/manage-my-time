import 'package:flutter/material.dart';
import 'package:time_management_app/widgets/app_bar.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 29, 33),
      appBar: const PreferredSize(
          preferredSize: Size(400, 100), child: TaskscreenAppBar()),
      body: Container(
        height: 700,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      ),
    );
  }
}
