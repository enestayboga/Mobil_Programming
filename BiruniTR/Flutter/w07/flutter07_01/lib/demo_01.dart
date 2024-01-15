import 'package:flutter/material.dart';
class MyAppUserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "User Profile", theme: ThemeData(primaryColor: Colors.blue),
        home: UserProfileScreen(),
        );
  }
}

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.lightBlue, Colors.red],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://media.licdn.com/dms/image/D4D03AQHYofYSYXQXpQ/profile-displayphoto-shrink_200_200/0/1701543058967?e=1710374400&v=beta&t=yJ4qoM0q8aXMWoVA4Of9BHhDykOrnVXxu7D_9bP84Bg"),
              ),
              SizedBox(height: 20),
              Text(
                "User Name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "Short Bio",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      print("Message icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(Icons.message, size: 50),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mesaj",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("settings icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(Icons.settings, size: 50),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("people icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(Icons.people, size: 50),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "People",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
