import 'package:flutter/material.dart';

class RegistrationFormDemo extends StatefulWidget {
  const RegistrationFormDemo({super.key});

  @override
  State<RegistrationFormDemo> createState() => _RegistrationFormDemoState();
}

class _RegistrationFormDemoState extends State<RegistrationFormDemo> {
  final _formkey = GlobalKey<FormState>();

  String _name = "";
  String _email = "";
  String _password = "";

  String _formStatus = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_formStatus),
              TextFormField(
                decoration: InputDecoration(labelText: "Adı"),
                validator: (value) {
                  if (value == null || value.trim() == "") {
                    return "Adı boş olamaz!";
                  }
                },
                onSaved: (newValue) {
                  _name = newValue!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.trim() == "") {
                    return "Email boş olamaz!";
                  }
                },
                onSaved: (newValue) {
                  _email = newValue!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Şifre"),
                validator: (value) {
                  if (value == null || value.trim() == "") {
                    return "Şifre boş olamaz!";
                  }
                },
                onSaved: (newValue) {
                  _password = newValue!;
                },
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    _formkey.currentState!.save();

                    setState(() {
                      _formStatus = "Kayıt Başarılı";
                    });
                  } else {
                    setState(() {
                      _formStatus = "Hata";
                    });
                  }
                },
                child: Text("Kaydet"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
