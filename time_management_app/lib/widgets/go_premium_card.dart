import 'package:flutter/material.dart';

class GoPremiumCard extends StatelessWidget {
  const GoPremiumCard({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(25),
            height: 160,
            width: 400,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.black87),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.stars_sharp,
                  size: 35,
                  color: Colors.white,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Go Premium",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.clip),
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              "Get unlimited access to  all our features!",
                              style: TextStyle(
                                fontSize: 16,
                                overflow: TextOverflow.clip,
                                color: Colors.white60,
                              ),
                            ),
                          )
                        ]))
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.all(1)),
                      fixedSize: WidgetStatePropertyAll(Size(20, 50)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                      iconColor: WidgetStatePropertyAll(Colors.white),
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.lightBlueAccent)),
                  onPressed: () {},
                  child: const Icon(Icons.arrow_forward)))
        ],
      ),
    );
  }
}
