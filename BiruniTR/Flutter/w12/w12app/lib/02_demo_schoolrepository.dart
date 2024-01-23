import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:w12app/02_demo_student.dart';

class SchoolRepositoryDemo1 {
  static SchoolRepositoryDemo1 _instance = SchoolRepositoryDemo1.internal();
  factory SchoolRepositoryDemo1() => _instance;
  SchoolRepositoryDemo1.internal();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    var documentDirectory = await getDatabasesPath();
    var path = join(documentDirectory, "school.db");

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        db.execute(
            "CREATE TABLE students(id INTEGER PRIMARY KEY AUTOINCREMENT, firstName TEXT, lastName TEXT, departmentId INTEGER)");
      },
    );
  }

  //CRUD

  Future<int> addStudent(StudentDemo studentDemo) async {
    var db = await database;
    return db.insert('studentDemo', studentDemo.toMap());
  }

  Future<List<StudentDemo>> getStudents() async {
    var db = await database;
    var students = await db.query("studentDemo");
    return List.generate(students.length, (index) {
      return StudentDemo.fromMap(students[index]);
    });
  }

  Future<int> updateStudent(StudentDemo studentDemo) async {
    var db = await database;
    return db.update('studentDemo', studentDemo.toMap(),
        where: "id = ?", whereArgs: [studentDemo.id]);
  }

  Future<void> deleteStudent(int id) async {
    var db = await database;
    await db.delete('studentDemo', where: "id = ?", whereArgs: [id]);
  }
}
