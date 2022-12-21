class User {
  String? firstName;
  String? lastName;
  String? avatar;

  User({
    this.firstName,
    this.lastName,
    this.avatar
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['firstName'],
      lastName: json['lastName'],
      avatar: json['avatar'],
    );
  }

  factory User.empty() {
    return User(
      firstName: 'Empty',
      lastName: 'User',
      avatar: 'Error'
    );
  }
}