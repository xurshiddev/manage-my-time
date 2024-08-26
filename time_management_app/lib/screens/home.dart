import 'package:flutter/material.dart';
import 'package:time_management_app/details/task_list.dart';
import 'package:time_management_app/screens/tasks.dart';
// import 'package:time_management_app/screens/tasks.dart';
import 'package:time_management_app/widgets/app_bar.dart';
import 'package:time_management_app/widgets/bottom_nav_bar.dart';
import 'package:time_management_app/widgets/go_premium_card.dart';
import 'package:time_management_app/widgets/tasks_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<TaskDetail> taskList = TaskDetail.getTaskDetail();

    return Scaffold(
      appBar:
          const PreferredSize(preferredSize: Size(400, 80), child: MyAppBar()),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GoPremiumCard(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Tasks",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
            ),
          ),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8.0),
                      itemCount: taskList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return taskList[index].isEmpty
                            ? InkWell(
                                onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => const Tasks())),
                                child: TasksCard(
                                  taskName: taskList[index].taskName,
                                  taskColor: taskList[index].taskColor,
                                  taskIcon: taskList[index].taskIcon,
                                  leftChipColor: taskList[index].leftChipColor,
                                  complatedTasks:
                                      taskList[index].complatedTasks,
                                  leftTasks: taskList[index].complatedTasks,
                                  iconColor: taskList[index].iconColor,
                                ),
                              )
                            : const DottedborderCard();
                      })))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          elevation: 5,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
