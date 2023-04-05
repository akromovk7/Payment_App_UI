import 'package:hive/hive.dart';

class DbService {
  static Future readList({required String key}) async {
    Box box = Hive.box(key);
    final data = box.get(key) ?? [];
    return data;
  }

  static Future<List> writeList({
    required String key,
    required var value,
  }) async {
    Box box = Hive.box(key);
    List data = box.get(key) ?? [];
    data.add(value);
    box.put(key, data);
    return data;
  }
}