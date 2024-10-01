
import 'season.dart';
import 'package:json_annotation/json_annotation.dart';
part 'travel.g.dart';

@JsonSerializable()
class Travel{
  final int id;
  final String location;
  final String price;
  final String duration;
  final Season season;
  final double totalCost;
  Travel({required this.id,required this.location,required this.price,required this.duration,required this.totalCost,required this.season});

  factory Travel.fromJson(Map<String, dynamic> json) =>
      _$TravelFromJson(json);
  Map<String, dynamic> toJson() => _$TravelToJson(this);
}

