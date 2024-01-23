class StudentDemo {
  int id;
  String firstName;
  String lastName;
  int departmentId;
  StudentDemo(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.departmentId});

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "firstName": firstName,
      "lastName": lastName,
      "departmentId": departmentId
    };
  }

  factory StudentDemo.fromMap(Map<String, dynamic> map) {
    return StudentDemo(
      id: map["id"],
      firstName: map["firstName"],
      lastName: map["lastName"],
      departmentId: map["departmentId"],
    );
  }
}
