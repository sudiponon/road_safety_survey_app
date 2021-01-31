import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:road_safety_survey/model/uer_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DBHelper {
  static Database _db;
  static const String id = 'id';
  static const String name = 'name';
  static const String phone = "phone";
  static const String age = "age";
  static const String qsn4Answer = "qsn4Answer";
  static const String qsn5Answer = "qsn5Answer";
  static const String qsn6Answer = "qsn6Answer";
  static const String qsn11Answer = "qsn11Answer";
  static const String qsn12Answer = "qsn12Answer";
  static const String qsn13Answer = "qsn13Answer";
  static const String qsn15Answer = "qsn15Answer";
  static const String qsn16Answer = "qsn16Answer";
  static const String qsn17Answer = "qsn17Answer";
  static const String qsn20Answer = "qsn20Answer";
  static const String qsn25Answer = "qsn25Answer";
  static const String qsn26Answer = "qsn26Answer";
  static const String qsn28Answer = "qsn28Answer";
  static const String qsn29Answer = "qsn29Answer";
  static const String qsn32Answer = "qsn32Answer";
  static const String groupValue33 = "groupValue33";
  static const String qsn34Answer = "qsn34Answer";
  static const String qsn35Answer = "qsn35Answer";
  static const String groupValue37 = "groupValue37";
  static const String groupValue38 = "groupValue38";
  static const String qsn39Answer = "qsn39Answer";
  static const String qsn40Answer = "qsn40Answer";
  static const String qsn41Answer = "qsn41Answer";
  static const String TABLE = 'User';
  static const String DB_NAME = 'Road_Survey.db';

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $TABLE ($id INTEGER PRIMARY KEY, $name TEXT, $phone TEXT, $age TEXT, $qsn4Answer TEXT, $qsn5Answer TEXT, $qsn6Answer TEXT, $qsn11Answer TEXT, $qsn12Answer TEXT, $qsn13Answer TEXT, $qsn15Answer TEXT, $qsn16Answer TEXT, $qsn17Answer TEXT, $qsn20Answer TEXT, $qsn25Answer TEXT, $qsn26Answer TEXT, $qsn28Answer TEXT, $qsn29Answer TEXT, $qsn32Answer TEXT, $groupValue33 TEXT, $qsn34Answer TEXT, $qsn35Answer TEXT, $groupValue37 TEXT, $groupValue38 TEXT, $qsn39Answer TEXT, $qsn40Answer TEXT, $qsn41Answer TEXT)");
  }

  Future<User> save(User user) async {
    var dbClient = await db;
    user.id = await dbClient.insert(TABLE, user.toMap());
    return user;
    /*
    await dbClient.transaction((txn) async {
      var query = "INSERT INTO $TABLE ($NAME) VALUES ('" + User.name + "')";
      return await txn.rawInsert(query);
    });
    */
  }

  Future<List<User>> getUsers() async {
    var dbClient = await db;
    List<Map> maps = await dbClient.query(TABLE, columns: [
      id,
      name,
      phone,
      age,
      qsn4Answer,
      qsn5Answer,
      qsn6Answer,
      qsn11Answer,
      qsn12Answer,
      qsn13Answer,
      qsn15Answer,
      qsn16Answer,
      qsn17Answer,
      qsn20Answer,
      qsn25Answer,
      qsn26Answer,
      qsn28Answer,
      qsn29Answer,
      qsn32Answer,
      groupValue33,
      qsn34Answer,
      qsn35Answer,
      groupValue37,
      groupValue38,
      qsn39Answer,
      qsn40Answer,
      qsn41Answer,
    ]);
    //List<Map> maps = await dbClient.rawQuery("SELECT * FROM $TABLE");
    List<User> Users = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        Users.add(User.fromMap(maps[i]));
      }
    }
    return Users;
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient.delete(TABLE, where: '$id = ?', whereArgs: [id]);
  }

  Future<int> update(User User) async {
    var dbClient = await db;
    return await dbClient
        .update(TABLE, User.toMap(), where: '$id = ?', whereArgs: [User.id]);
  }

  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }
}
