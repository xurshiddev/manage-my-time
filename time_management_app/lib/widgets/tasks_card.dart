import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';

class TasksCard extends StatelessWidget {
  const TasksCard({
    super.key,
    required this.taskName,
    required this.taskColor,
    required this.taskIcon,
    required this.iconColor,
    required this.complatedTasks,
    required this.leftChipColor,
    required this.leftTasks,
  });

  final String taskName;
  final IconData taskIcon;
  final Color taskColor;
  final Color iconColor;
  final Color leftChipColor;
  final int leftTasks;
  final int complatedTasks;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 180,
      width: 180,
      decoration: BoxDecoration(
          color: taskColor,
          borderRadius: const BorderRadius.all(Radius.circular(25))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            taskIcon,
            color: iconColor,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            taskName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
           Row(
            children: [
              Chip(
                side: BorderSide(
                    width: 0, color: leftChipColor ),
                color: WidgetStatePropertyAll(leftChipColor),
                label: Text("$leftTasks left"),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              const SizedBox(width: 5),
               Chip(
                side: const BorderSide(
                    width: 0, color: Color.fromARGB(176, 255, 255, 255)),
                label: Text("$complatedTasks done"),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DottedborderCard extends StatelessWidget {
  const DottedborderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        color: const Color.fromARGB(148, 155, 107, 217),
        borderType: BorderType.RRect,
        radius: const Radius.circular(20),
        dashPattern: const [8, 4],
        strokeWidth: 2,
        child: TextButton(
            style: const ButtonStyle(
                fixedSize: WidgetStatePropertyAll(Size(175, 175))),
            onPressed: () {},
            child: const Text(
              "+ Add",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            )));
  }
}
