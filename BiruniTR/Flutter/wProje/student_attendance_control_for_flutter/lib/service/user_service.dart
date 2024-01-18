import 'dart:convert';

import 'package:student_attendance_control_for_flutter/model/user_model.dart';
import "package:http/http.dart" as http;

class UserService {
  final String url = "http://10.51.30.120:3000/Users";
  Future<Model?> fetchUsers() async {
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var jsonBody = Model.fromJson(jsonDecode(res.body));
      return jsonBody;
    } else {
      print("İstek başarısız oldu => ${res.statusCode}");
    }
  }
}
