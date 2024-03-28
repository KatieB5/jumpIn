class User {
  final String? id;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? profile_pic;
  final String? password;
  final String? phoneNumber;
  final String? bio;
  final bool? identity_verification_status;
  final bool? driver_verification_status;
  final dynamic car;


  
  
  const User ({
  this.id,
  this.username,
  this.firstName,
  this.lastName,
  this.email,
  this.profile_pic,
  this.password,
  this.phoneNumber,
  this.bio,
  this.identity_verification_status,
  this.driver_verification_status,
  this.car
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
    );
  }
  static List<User> fromJsonList(List<Map<String, dynamic>> jsonList) {
    return jsonList.map<User>((json) => User.fromJson(json)).toList();
  }
}