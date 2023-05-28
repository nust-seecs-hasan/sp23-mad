class Record {
  final String name;
  final String description;

  Record(this.name, this.description);

  Record.fromJson(Map<dynamic, dynamic> json)
      : name = json['name'] as String,
        description = json['description'] as String;

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
        'date': name,
        'text': description,
      };
}
