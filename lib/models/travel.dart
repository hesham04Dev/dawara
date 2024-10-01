
import 'season.dart';
import 'package:json_annotation/json_annotation.dart';
part 'travel.g.dart';

@JsonSerializable()
class Travel{
  final int d_id;
  final String d_location;
  final String d_price;
  final String d_duration;
  final Season d_season;
  final double d_totalCost;
  Travel({required this.d_id,required this.d_location,required this.d_price,required this.d_duration,required this.d_totalCost,required this.d_season});

  factory Travel.fromJson(Map<String, dynamic> json) =>
      _$TravelFromJson(json);
  Map<String, dynamic> toJson() => _$TravelToJson(this);
}

