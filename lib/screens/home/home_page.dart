import 'package:flutter/material.dart';
import 'package:pitsto_app/screens/profile/profile_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A1B33),
        toolbarHeight: 150,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,

            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Text(
                        "Welcome back,",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("John Doe", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(16, 221, 221, 221),
                  border: Border.all(color: Colors.white),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.car_crash, color: Colors.white),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Vehicle",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          "Toyota Camry - 2020",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),

                    FilledButton(onPressed: (){},style: FilledButton.styleFrom(
                      backgroundColor: Color(0xFF00CFFF)
                    ), child: Text("View"),)
                  ],
                ),
              ),
            ],
          ),
        ),
        centerTitle: false,
      ),
    );
  }
}
