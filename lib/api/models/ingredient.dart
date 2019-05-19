import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'ingredient.g.dart';

@JsonSerializable(createToJson: false)
class Ingredient extends Equatable {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'recipe')
  final String recipe;
  @JsonKey(name: 'slug')
  final String slug;

  Ingredient({
    @required this.name,
    @required this.url,
    @required this.recipe,
    @required this.slug,
  }) : super([name, url, recipe, slug]);

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  @override
  String toString() => 'Ingredient { name: $name, url: $url }';
}
