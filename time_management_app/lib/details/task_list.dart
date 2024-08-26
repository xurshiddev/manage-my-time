import 'package:flutter/material.dart';

class TaskDetail {
  TaskDetail(
      {required this.taskName,
      required this.taskColor,
      required this.taskIcon,
      required this.iconColor,
      required this.complatedTasks,
      required this.leftChipColor,
      required this.leftTasks,
      this.isEmpty = true});

  String taskName;
  IconData taskIcon;
  Color taskColor;
  Color iconColor;
  Color leftChipColor;
  int leftTasks;
  int complatedTasks;
  bool isEmpty;

  static List<TaskDetail> getTaskDetail() {
    return [
      TaskDetail(
          taskName: "Personal",
          taskColor: const Color.fromARGB(255, 250, 242, 230),
          taskIcon: Icons.person,
          iconColor: const Color.fromARGB(255, 242, 212, 174),
          leftChipColor: const Color.fromARGB(255, 254, 235, 205),
          leftTasks: 3,
          complatedTasks: 4),
      TaskDetail(
          taskName: "Work",
          taskColor: const Color.fromARGB(255, 251, 234, 234),
          taskIcon: Icons.work,
          iconColor: const Color.fromARGB(255, 232, 139, 132),
          leftChipColor: const Color.fromARGB(255, 247, 223, 226),
          leftTasks: 3,
          complatedTasks: 4),
      TaskDetail(
          taskName: "Health",
          taskColor: const Color.fromARGB(255, 228, 238, 252),
          taskIcon: Icons.favorite_sharp,
          iconColor: const Color.fromARGB(255, 192, 210, 246),
          leftChipColor: const Color.fromARGB(255, 220, 230, 249),
          leftTasks: 3,
          complatedTasks: 4),
           TaskDetail(
          taskName: "",
          isEmpty: false,
          taskColor: const Color.fromARGB(255, 228, 238, 252),
          taskIcon: Icons.favorite_sharp,
          iconColor: const Color.fromARGB(255, 192, 210, 246),
          leftChipColor: const Color.fromARGB(255, 225, 234, 251),
          leftTasks: 3,
          complatedTasks: 4),
    ];
  }
}
