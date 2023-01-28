import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'index')
enum Dough implements Comparable<Dough> {
  original,
  thin;

  @override
  int get index;

  @override
  int compareTo(Dough other) {
    return index.compareTo(other.index);
  }
}
