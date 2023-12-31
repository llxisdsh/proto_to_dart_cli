import 'dart:io';

import 'package:cli/model_generator.dart';

void main(List<String> arguments) {
  final jsonRawData = File("proto.json").readAsStringSync();
  final dartCode = ModelGenerator('AutoGenerated').generateDartClasses(jsonRawData);
  File("proto.dart").writeAsStringSync(dartCode.code, flush: true);
}
