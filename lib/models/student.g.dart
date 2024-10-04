// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Student _$StudentFromJson(Map<String, dynamic> json) => Student(
      d_phone: json['d_phone'] as String,
      d_address: json['d_address'] as String,
      d_problem: json['d_problem'] as String?,
      d_id: int.parse(json['d_id']),
      d_name: json['d_name'] as String,
      d_age: double.parse(json['d_age']).round(),
    );

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
      'd_id': instance.d_id,
      'd_name': instance.d_name,
      'd_age': instance.d_age,
      'd_phone': instance.d_phone,
      'd_address': instance.d_address,
      'd_problem': instance.d_problem,
    };
