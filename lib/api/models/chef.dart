import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'chef.g.dart';

@JsonSerializable(createToJson: false)
class Chef extends Equatable {
  @JsonKey(name: 'username')
  final String username;
  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'gravatar')
  final String avatarUrl;

  Chef({
    @required this.username,
    @required this.fullName,
    @required this.avatarUrl,
  }) : super([username, fullName, avatarUrl]);

  factory Chef.fromJson(Map<String, dynamic> json) => _$ChefFromJson(json);

  @override
  String toString() => 'Chef { username: $username, fullName: $fullName }';
}
