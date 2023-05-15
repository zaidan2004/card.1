
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';



//  class SqlDatabase {

//   static Database? _db;

//   Future <Database?> get db async {
//     if (_db == null) {
//       _db = await intilDatabass();
//       return _db;
//     } else {
//       return _db;
//     }
//   }

//   intilDatabass() async {
//     String databasePath = await getDatabasesPath();
//     String path = join(databasePath, "zaidan.db");
//     Database mydb = await openDatabase(path, onCreate: _onCreate, version: 0, onUpgrade:  _onUpgrade);
//     return mydb;
//   }

//   _onUpgrade(Database db, int oldversion, int newversion) async {
//     print('onUpgrade======================>');
//   }

//   _onCreate(Database db, int version) async {
//     await db.execute('''
//     CREATE TAIBAL 'userSSS'(
//       "id" INTEGER NOT NULL PRIMIRY KEY AUTOINCREMENT,
//       "username" TEXT NOT NULL
//     )
//   ''');
//   print('onCreate======================>');
//   }

//   wreadData(String sql) async {
//     Database? mydb = await db;
//     List<Map> response = await mydb!.rawQuery(sql);
//     return response;
//   }
//   insretData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawInsert(sql);
//     return response;
//   }
//   updateData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawUpdate(sql);
//     return response;
//   }
//   deleteData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawDelete(sql);
//     return response;
//   }


// }








class SqlDb {

  static Database? _db ; 
  
  Future<Database?> get db async {
      if (_db == null){
        _db  = await intialDb() ;
        return _db ;  
      }else {
        return _db ; 
      }
  }


intialDb() async {
  String databasepath = await getDatabasesPath() ; 
  String path = join(databasepath , 'wael.db') ;   
  Database mydb = await openDatabase(path , onCreate: _onCreate , version: 5  , onUpgrade:_onUpgrade ) ;  
  return mydb ; 
}

_onUpgrade(Database db , int oldversion , int newversion ) {


  
}

_onCreate(Database db , int version) async {
  await db.execute('''
  CREATE TABLE "notes" (
    "id" INTEGER  NOT NULL PRIMARY KEY  AUTOINCREMENT, 
    "note" TEXT NOT NULL
  )
 ''') ;

}

readData(String sql) async {
  Database? mydb = await db ; 
  List<Map> response = await  mydb!.rawQuery(sql);
  return response ; 
}
insertData(String sql) async {
  Database? mydb = await db ; 
  int  response = await  mydb!.rawInsert(sql);
  return response ; 
}
updateData(String sql) async {
  Database? mydb = await db ; 
  int  response = await  mydb!.rawUpdate(sql);
  return response ; 
}
deleteData(String sql) async {
  Database? mydb = await db ; 
  int  response = await  mydb!.rawDelete(sql);
  return response ; 
}
 

// SELECT 
// DELETE 
// UPDATE 
// INSERT 
 

}