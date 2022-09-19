class RegisterReq {
  String? username;
  String? password;
   String? email;
   String? firstName;
   String? lastName;

  RegisterReq({
    this.username,
    this.password,
    this.email,
    this.firstName,
    this.lastName,});

  RegisterReq.fromJson(dynamic json) {
    username = json['username'];
    password = json['password'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = username;
    map['password'] = password;
    map['email'] = email;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    return map;
  }

}