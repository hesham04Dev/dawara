import 'package:json_annotation/json_annotation.dart';
part 'season.g.dart';

@JsonSerializable()
class Season {
  final int d_id;
  final String d_name;
Season({required this.d_id,required this.d_name});

  factory Season.fromJson(Map<String, dynamic> json) =>
      _$SeasonFromJson(json);
  Map<String, dynamic> toJson() => _$SeasonToJson(this);
}