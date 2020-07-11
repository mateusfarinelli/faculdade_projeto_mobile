class Incident {
  String _id;
  String _title;
  String _description;
  double _value;

  Incident(this._id, this._title, this._description, this._value);
  
  String get id => _id;
  String get title => _title;
  String get description => _description;
  double get value => _value;


  Incident.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['title'] = this._title;
    data['description'] = this._description;
    data['value'] = this._value;
    return data;
  }
}
