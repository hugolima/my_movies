import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final config = {'apiKey': Platform.environment['MY_MOVIES_API_KEY']};
  final fileName = 'lib/src/commons/env.dart';
  File(fileName).writeAsString('final environment = ${json.encode(config)};');
}
