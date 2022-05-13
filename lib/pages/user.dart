// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String login = "";
  String name = "";
  String email = "";
  String token = "";

  List<String> roles = [];

  User(Map<String, dynamic> map) {
    name = map["nome"];
    email = map["email"];
    token = map["token"];
    login = map["login"];
    roles = getRoles(map);
  }

  @override
  String toString() {
    return 'User(login: $login, name: $name, email: $email, token: $token, roles: $roles,)';
  }

  static getRoles(Map<String, dynamic> map) {
    List list = map["roles"];
    List<String> roles = [];
  }
}
