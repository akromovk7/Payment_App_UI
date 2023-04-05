// import 'package:flutter/material.dart';
// import 'package:payment_card_ui/data/models/card_model/card_model.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class LocalDatabase {
//   static String cardName = "cardTable";
//   static LocalDatabase getInstance = LocalDatabase._init();
//   Database? _database;

//   LocalDatabase._init();

//   Future<Database> getDb() async {
//     if (_database == null) {
//       _database = await _initDB("card.db");
//       return _database!;
//     }
//     return _database!;
//   }

//   Future<Database> _initDB(String filename) async {
//     var dbPath = await getDatabasesPath();
//     String path = join(dbPath, filename);

//     Database database = await openDatabase(
//       path,
//       version: 1,
//       onCreate: (Database db, int version) async {
//         String idType = "INTEGER PRIMARY KEY AUTOINCREMENT";
//         String textType = "TEXT";
//         String intType = "INTEGER";

//         // await db.execute('''CREAT TABLE $cardName (
//         //   ${CardFields.cardId} $idType,
//         //   ${CardFields.cardNumber} $intType,
//         //   ${CardFields.cardOwner} $textType,
//         //   ${CardFields.cardType} $textType,
//         //   ${CardFields.gradientColorSecond} $textType,
//         //   ${CardFields.gradinetColorFirst} $textType,
//         //   ${CardFields.iconImage} $textType,
//         //   ${CardFields.moneyAmount} $intType,
//         //   ${CardFields.validityPeriod} $intType,
//         // )
//         // ''');
//       },
//     );
//     return database;
//   }

//   // static Future<CardModel> insertToDatabase(CardModel newCard) async {
//   //   var database = await getInstance.getDb();
//   //   int cardId = await database.insert(cardName, newCard.toJson());
//   //   debugPrint("CARD ADDED");
//   //   return newCard.copyWith(cardId: cardId);
//   // }

//   // static Future<CardModel> updateTaskById(CardModel updatedCard) async {
//   //   var database = await getInstance.getDb();
//   //   int cardId = await database.update(
//   //     cardName,
//   //     updatedCard.toJson(),
//   //     where: 'cardId = ?',
//   //     whereArgs: [updatedCard.cardId],
//   //   );
//   //   debugPrint("CARD UPDATED");
//   //   return updatedCard.copyWith(cardId: cardId);
//   // }

//   // static Future<List<CardModel>> getAllCards() async {
//   //   var database = await getInstance.getDb();
//   //   var orderBy = "${CardFields.cardNumber} DESC";
//   //   var listOfCards = await database.query(cardName, orderBy: orderBy);

//   //   var list = listOfCards.map((e) => CardModel.fromJson(e)).toList();

//   //   return list;
//   // }

//   // static Future<List<CardModel>> getCardByCategoryId(int cardType) async {
//   //   var database = await getInstance.getDb();
//   //   List<Map> result = await database.rawQuery(
//   //     'SELECT * FROM $cardName WHERE  ${CardFields.cardType}=?',
//   //     [cardType],
//   //   );

//   //   var list = result
//   //       .map((e) => CardModel.fromJson(e as Map<String, dynamic>))
//   //       .toList();
//   //   return list;
//   // }

//   // static Future<List<CardModel>> getCardByCardOwner(
//   //     {String cardOwner = ''}) async {
//   //   var database = await getInstance.getDb();

//   //   if (cardOwner.isNotEmpty) {
//   //     var listOfCards = await database.query(
//   //       cardName,
//   //       where: "cardOwner LIKE ?",
//   //       whereArgs: ['%$cardOwner'],
//   //     );
//   //     var list = listOfCards.map((e) => CardModel.fromJson(e)).toList();
//   //     return list;
//   //   } else {
//   //     var listOfCards = await database.query(
//   //       cardName,
//   //       columns: [
//   //         // CardFields.cardId,
//   //         CardFields.cardNumber,
//   //         CardFields.validityPeriod,
//   //         CardFields.cardOwner,
//   //         CardFields.moneyAmount,
//   //         CardFields.iconImage,
//   //         CardFields.gradientColorSecond,
//   //         CardFields.gradinetColorFirst,
//   //         CardFields.bankName,
//   //         CardFields.cardType,
//   //       ],
//   //     );

//   //     var list = listOfCards.map((e) => CardModel.fromJson(e)).toList();
//   //     return list;
//   //   }
//   // }

//   static Future<int> deleteCardById(int cardId) async {
//     var database = await getInstance.getDb();
//     debugPrint("CARD DELETED");
//     return await database.delete(
//       cardName,
//       where: 'cardId = ?',
//       whereArgs: [cardId],
//     );
//   }
// }
