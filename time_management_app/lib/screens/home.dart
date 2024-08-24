import 'package:flutter/material.dart';
import 'package:time_management_app/widgets/app_bar.dart';
import 'package:time_management_app/widgets/go_premium_card.dart';
import 'package:time_management_app/widgets/tasks_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size(400, 80), child: MyAppBar()),
      body: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoPremiumCard(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Tasks",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(15),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                direction: Axis.horizontal,
                children: [
                  TasksCard(
                    taskName: "Personal",
                    taskColor: Color.fromRGBO(194, 201, 118, 0.444),
                    taskIcon: Icon(Icons.person),
                  ),
                  TasksCard(
                    taskName: "Work",
                    taskColor: Color.fromRGBO(197, 124, 193, 0.342),
                    taskIcon: Icon(Icons.work),
                  ),
                  TasksCard(
                    taskName: "Health",
                    taskColor: Color.fromRGBO(138, 179, 246, 0.557),
                    taskIcon: Icon(Icons.favorite_sharp),
                  ),
                  DottedborderCard()
                ],
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      floatingActionButton: FloatingActionButton( 
      backgroundColor: Colors.black,
    
        onPressed: (){}, child: const Icon(Icons.add, color: Colors.white,)),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: ''),
                    NavigationDestination(icon: Icon(Icons.person_2_rounded), label: '')

        ],
      ),
    );
  }
}
