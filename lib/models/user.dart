import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
// part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String firstname;
  final String lastname;
  final String email;
  final String password;
  final String token;
  final String type;
  User(this.id, this.firstname, this.lastname, this.email, this.password,
      this.token, this.type);
  // factory User.fromJson(Map<String, dynamic> map)=> _$UserFromJson(map);
  // Map<String, dynamic> toJson()=> _$UserToJson(this);
  Map<String, dynamic> toMap() {
    return {
      'id': '$id',
      'firstname': '$firstname',
      'lastname': '$lastname',
      'email': '$email',
      'password': '$password',
      'type': '$type',
      'token': '$token',
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      map['_id'] ?? '',
      map['name'] ?? '',
      map['email'] ?? '',
      map['password'] ?? '',
      map['address'] ?? '',
      map['type'] ?? '',
      map['token'] ?? '',
    );
  }
  String toJson() => json.encode(toMap());
  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
