import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageDemo extends StatefulWidget {
  const LoginPageDemo({super.key});

  @override
  State<LoginPageDemo> createState() => _LoginPageDemoState();
}

class _LoginPageDemoState extends State<LoginPageDemo> {
  var _userFieldController = TextEditingController();
  var _passwordFieldController = TextEditingController();
  bool isRememberMe = false;

  _loadCredentials() async {
    var db = await SharedPreferences.getInstance();
    setState(() async {
      _userFieldController.text = db.getString("username") ?? "";
      _passwordFieldController.text = db.getString("username") ?? "";
      isRememberMe = db.getBool("isRememberMe") ?? false;
    });
  }

  _saveCredentials() async {
    var db = await SharedPreferences.getInstance();

    if (isRememberMe) {
      await db.setString("username", _userFieldController.text);
      await db.setString("password", _passwordFieldController.text);
    } else {
      await db.remove("username");
      await db.remove("password");
    }

    await db.setBool("isRememberMe", isRememberMe);
  }

  @override
  void initState() {
    super.initState();
    _loadCredentials();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Shared Preferences"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _userFieldController,
              decoration: InputDecoration(labelText: "User Name"),
            ),
            TextField(
              controller: _passwordFieldController,
              obscureText: true,
              decoration: InputDecoration(labelText: "Password"),
            ),
            Row(
              children: [
                Checkbox(
                    value: false,
                    onChanged: (value) {
                      isRememberMe = value!;
                      setState(() {});
                    }),
                Text("Remember me")
              ],
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_userFieldController.text == "enes" &&
                      _passwordFieldController.text == "123") {
                    var db = await SharedPreferences.getInstance();
                    if (isRememberMe) {
                      db.setBool("isAuth", true);
                    }
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePageDemo();
                    }));
                  } else {
                    await _saveCredentials();
                  }
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}

class HomePageDemo extends StatelessWidget {
  const HomePageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () async {
                var db = await SharedPreferences.getInstance();
                db.setBool("isAuth", false);
                Navigator.pop(context);
              },
              child: Text("Exit")),
        ));
  }
}
