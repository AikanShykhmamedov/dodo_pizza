import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'index')
enum Category {
  pizza,
  combo,
  snacks,
  desserts,
  drinks,
  sauces,
  goods;

  @override
  int get index;
}
