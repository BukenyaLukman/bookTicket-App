import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children:[
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    const Text("Good Morning",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF526480),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/sass.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}
