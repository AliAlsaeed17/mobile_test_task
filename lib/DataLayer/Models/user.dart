import 'dart:convert';

class User {
  String name;
  String email;
  String phone;
  String countryCode;

  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'phone': phone,
      'country_code': countryCode
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['user']['name'] ?? '',
      email: map['user']['email'] ?? '',
      phone: map['user']['phone'] ?? '',
      countryCode: map['user']['country_code'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());
  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
