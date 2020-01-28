class UsuarioModel {
  String name;
  String email;
  String password;
  String auth;
  String picture;

  UsuarioModel({this.name, this.email, this.password, this.auth, this.picture});

  UsuarioModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    auth = json['auth'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['auth'] = this.auth;
    data['picture'] = this.picture;
    return data;
  }
}