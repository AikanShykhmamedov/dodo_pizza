import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'index')
enum Measure {
  weight,
  volume,
  piece,
  diameter;

  @override
  int get index;
}
