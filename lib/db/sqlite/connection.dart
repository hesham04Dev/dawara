import 'package:dawara/functions/common.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';

import '../sql.dart';

class Sqlite extends DSql{
  Sqlite._();


  static Future<void> init() async{
    DSql.offlineInstance = Sqlite._();
    DSql.offlineInstance.connection =  await openDb();
    //await DSql.instance().connection.connect();
    // var result= await DSql.instance.connection.execute("select * from d_student");
    // for (final row in result.rows) {
    //   print(row.assoc());
    // }
  }
  @override
  dynamic select(String query, {
    List<Object?>? params,
    Function(dynamic json)? fromJson,
    bool print =false
  }

  ){
    //TODO add the list result and printing
    return (DSql.instance().connection as Database).execute(query,params??[]);
  }
  @override
  void execute(String query, [
    List<Object?>? params,
  ]){
    offlineDb().execute(query,params??[]);
    print("object");
  }
  void show(resultSet){
    //todo
  }

  static Future<Database> openDb() async {
    final dir = await getApplicationSupportDirectory();
    String dbPath = "${dir.path}/dawara_db.db";
    print(dbPath);
    Database db = sqlite3.open(dbPath);
    createTablesIfNotExists(db);
    return db;

  }
  static void createTablesIfNotExists(Database db) {
  const String createSettingTable = '''
  CREATE TABLE IF NOT EXISTS d_setting(
  d_id INTEGER PRIMARY KEY,
  d_name TEXT,
  d_val INTEGER
  );
  ''';
    /*
    const String createCategoryTable = '''
  CREATE TABLE IF NOT EXISTS category(
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT unique,
  IconId INTEGER DEFAULT 0,
  EarnedXp INTEGER DEFAULT 0,
  MaxXp INTEGER DEFAULT 100,
  Level INTEGER DEFAULT 1
  );
  INSERT OR IGNORE INTO  category (Name) values('main');
  ''';
    const String createHabitTable = '''
  CREATE TABLE IF NOT EXISTS habit(
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT,
  Category INTEGER,
  IsBad BOOLEAN,
  Price int,
  IconId INTEGER,
  Priority INTEGER,
  Hardness INTEGER,
  TimeInMinutes INTEGER,
  IsArchived BOOLEAN DEFAULT 0,
  FOREIGN KEY(Category) REFERENCES category(Id)
  )''';
    const String createGiftTable = '''
  CREATE TABLE IF NOT EXISTS gift(
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT,
  Price INTEGER,
  IconId INTEGER,
  IsArchived BOOLEAN DEFAULT 0,
  NoOfUsed INTEGER DEFAULT 0
  )

  ''';
    const String createSettingTable = '''
  CREATE TABLE IF NOT EXISTS d_setting(
  d_id INTEGER PRIMARY KEY,
  d_name TEXT,
  d_val INTEGER
  );
  INSERT OR IGNORE INTO setting(Id,Name,Val) values (1,'Coins',0),(2,'DarkMode',0),(3,'AccentColor',0),(4,'NotificationTime',0),(5,'Streak',1),(6,'ListView',0);  ''';
    const String createLogGiftTable = '''
  CREATE TABLE IF NOT EXISTS logGift(
  DateOnly TEXT,
  GiftId INTEGER,
  Count INTEGER,
  PRIMARY KEY (GiftId, DateOnly),
  FOREIGN KEY (GiftId) REFERENCES gift(Id)
  )''';
    const String createLogHabitTable = '''
  CREATE TABLE IF NOT EXISTS logHabit(
  DateOnly TEXT,
  HabitId INTEGER,
  Count INTEGER,
  PRIMARY KEY (HabitId, DateOnly),
  FOREIGN KEY (HabitId) REFERENCES habit(Id)
  )''';*/
    const List<String> sqlList = [
      /*createCategoryTable,
      createHabitTable,
      createGiftTable,
      createLogGiftTable,
      createLogHabitTable,*/
      createSettingTable
    ];
    for (String sql in sqlList) {
      db.execute(sql);
    }
  }
}
