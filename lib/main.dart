import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:payment_card_ui/app/app.dart';
import 'package:payment_card_ui/data/models/card_model/card_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init("${appDocumentDirectory.path}/dictionary");
  Hive.registerAdapter<CardModel>(CardModelAdapter());

  await Hive.openBox("cards");
  runApp(const App());
}
