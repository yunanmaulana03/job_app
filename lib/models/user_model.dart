class UserModel {
  // data model
  String? id;
  String? email;
  String? password;
  String? name;
  String? goal;

  // constructor
  UserModel({
    required this.id,
    required this.email,
    required this.password,
    required this.name,
    required this.goal,
  });

  // constructor JSON
  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    name = json['name'];
    goal = json['goal'];
  }

  // method/ function
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'password': password,
      'name': name,
      'goal': goal,
    };
  }
}
