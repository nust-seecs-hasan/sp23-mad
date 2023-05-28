class SuperHeros {
  int? id;
  String? name;
  String? code;
  String? power;

  SuperHeros({this.id, this.name, this.code, this.power});

  SuperHeros.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    power = json['power'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['code'] = this.code;
    data['power'] = this.power;
    return data;
  }
}
