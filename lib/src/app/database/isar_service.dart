import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class IsarService {
  static Isar? _instance;

  static Future<Isar> getInstance() async {
    if (_instance != null) return _instance!;

    final dir = await getApplicationDocumentsDirectory();
    _instance = await Isar.open([ShowModelSchema], directory: dir.path);
    return _instance!;
  }
}
