import 'package:mysql_client/mysql_client.dart';

import '../sql.dart';

class MySql extends DSql {
  MySql._() {}

  static Future<void> init() async {
    DSql.onlineInstance = MySql._();
    DSql.instance().connection = await MySQLConnection.createConnection(
      host: "127.0.0.1",
      port: 3306,
      userName: "root",
      password: "root",
      databaseName: "dawra",
      secure: false,
    );
    await DSql.instance().connection.connect();
    var result =
        await DSql.instance().connection.execute("select * from d_student");
    DSql.instance().show(result);
  }

  @override
  dynamic select(
    String query, {
    List<Object?>? params,
    Function(dynamic json)? fromJson,
    bool print =false
}) async {
    Map<String, dynamic>? mapParams = _paramToMap(params);
    query = _mysqlParamFormatter(query);
    var queryResult= await (DSql.instance().connection as MySQLConnection).execute(query, mapParams);
    if(print) show(queryResult);
    if(fromJson!=null){
      return _list(fromJson,queryResult);
    }
    return queryResult;
  }
  @override
  Future<List<T>> _list<T>(T Function(dynamic json) fromJson, IResultSet resultSets) async {
    List<T> list = [];
    for (final row in resultSets.rows) {
      var json = row.assoc();
      list.add(fromJson(json));
    }

    return list;
  }

  @override
  void execute(String query, [List<Object?>? params]) {
    select(query,params: params);
  }
  @override
  void show(resultSets){
    for (final result in resultSets) {
      for (final row in result.rows) {
        print(row.assoc());
      }
    }
  }
  Map<String, dynamic>? _paramToMap(List? params) {
    Map<String, dynamic> mapParams = {};
    if (params == null) {
      return null;
    }

    for (int i = 0; i < params.length; i++) {
      mapParams.addAll({"${i+1}": params[i]});
    }
    //print(mapParams);
    return mapParams;
  }
  String _mysqlParamFormatter(String query) {
    int count = 1;
    var result = query.replaceAllMapped('?', (match) => ':${count++}');
    //print(result);
    return result;
  }


}
