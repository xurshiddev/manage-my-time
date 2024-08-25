import 'package:flutter/material.dart';
import 'package:time_management_app/screens/tasks.dart';
import 'package:time_management_app/widgets/app_bar.dart';
import 'package:time_management_app/widgets/go_premium_card.dart';
import 'package:time_management_app/widgets/tasks_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
          Padding(
              padding: const EdgeInsets.all(15),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                direction: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Tasks())),
                    child: const TasksCard(
                      taskName: "Personal",
                      taskColor: Color.fromARGB(255, 250, 242, 230),
                      taskIcon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 242, 212, 174),
                        size: 35,
                      ),
                    ),
                  ),
                  const TasksCard(
                    taskName: "Work",
                    taskColor: Color.fromARGB(255, 251, 234, 234),
                    taskIcon: Icon(
                      Icons.work,
                      size: 35,
                      color: Color.fromARGB(255, 232, 139, 132),
                    ),
                  ),
                  const TasksCard(
                    taskName: "Health",
                    taskColor: Color.fromARGB(255, 228, 238, 252),
                    taskIcon: Icon(
                      Icons.favorite_sharp,
                      size: 35,
                      color: Color.fromARGB(255, 192, 210, 246),
                    ),
                  ),
                  const DottedborderCard()
                ],
              ))
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
      bottomNavigationBar: bottomNavBar(),
    );
  }

  Container bottomNavBar() {
    return Container(
        height: 80,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(97, 162, 174, 182),
                  spreadRadius: 4,
                  blurRadius: 10)
            ]),
        child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_2_rounded), label: '')
              ],
            )));
  }
}
