import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theMoviewDbKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'No Movie DB Key';
}
