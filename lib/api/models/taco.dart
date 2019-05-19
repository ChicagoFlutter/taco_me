import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:taco_me/api/api.dart';

part 'taco.g.dart';

@JsonSerializable(createToJson: false)
class Taco extends Equatable {
  @JsonKey(name: 'mixin')
  final Ingredient mix;
  @JsonKey(name: 'seasoning')
  final Ingredient seasoning;
  @JsonKey(name: 'base_layer')
  final Ingredient baseLayer;
  @JsonKey(name: 'condiment')
  final Ingredient condiment;
  @JsonKey(name: 'shell')
  final Ingredient shell;

  Taco({
    @required this.mix,
    @required this.seasoning,
    @required this.baseLayer,
    @required this.condiment,
    @required this.shell,
  }) : super([mix, seasoning, baseLayer, condiment, shell]);

  factory Taco.fromJson(Map<String, dynamic> json) => _$TacoFromJson(json);

  @override
  String toString() =>
      'Taco { mixin: $mix, seasoning: $seasoning, baseLayer: $baseLayer, condiment: $condiment, shell: $shell }';
}
