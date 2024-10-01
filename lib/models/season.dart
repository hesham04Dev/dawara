import 'package:json_annotation/json_annotation.dart';
part 'season.g.dart';

@JsonSerializable()
class Season {
  final int id;
  final String name;
Season({required this.id,required this.name});

  factory Season.fromJson(Map<String, dynamic> json) =>
      _$SeasonFromJson(json);
  Map<String, dynamic> toJson() => _$SeasonToJson(this);
}