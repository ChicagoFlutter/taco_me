// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taco.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Taco _$TacoFromJson(Map<String, dynamic> json) {
  return Taco(
      mix: json['mixin'] == null
          ? null
          : Ingredient.fromJson(json['mixin'] as Map<String, dynamic>),
      seasoning: json['seasoning'] == null
          ? null
          : Ingredient.fromJson(json['seasoning'] as Map<String, dynamic>),
      baseLayer: json['base_layer'] == null
          ? null
          : Ingredient.fromJson(json['base_layer'] as Map<String, dynamic>),
      condiment: json['condiment'] == null
          ? null
          : Ingredient.fromJson(json['condiment'] as Map<String, dynamic>),
      shell: json['shell'] == null
          ? null
          : Ingredient.fromJson(json['shell'] as Map<String, dynamic>));
}
