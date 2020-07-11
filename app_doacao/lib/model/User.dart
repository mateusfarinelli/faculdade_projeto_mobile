class User {
  String _id;
  String _nome;
  String _email;
  String _telefone;

  User({String id, String nome, String email, String telefone}) {
    this._id = id;
    this._nome = nome;
    this._email = email;
    this._telefone = telefone;
  }

  String get id => _id;
  String get nome => _nome;
  String get email => _email;
  String get telefone => _telefone;


  User.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _nome = json['nome'];
    _email = json['email'];
    _telefone = json['telefone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['nome'] = this._nome;
    data['email'] = this._email;
    data['telefone'] = this._telefone;
    return data;
  }
}
