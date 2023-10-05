class AutoGenerate  {
  AutoGenerate ({
    required this.seasons,
  });
  late final List<Seasons> seasons;

  AutoGenerate .fromJson(Map<String, dynamic> json){
    seasons = List.from(json['seasons']).map((e)=>Seasons.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['seasons'] = seasons.map((e)=>e.toJson()).toList();
    return _data;
  }
}
// ii_khushlu_official_ii
class Seasons {
  Seasons({
    required this.type,
  });
  late final Type type;

  Seasons.fromJson(Map<String, dynamic> json){
    type = Type.fromJson(json['type']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type.toJson();
    return _data;
  }
}

class Type {
  Type({
    required this.name,
    required this.id,
    required this.value,
  });
  late final String name;
  late final int id;
  late final List<String> value;

  Type.fromJson(Map<String, dynamic> json){
    name = json['name'];
    id = json['id'];
    value = List.castFrom<dynamic, String>(json['value']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['id'] = id;
    _data['value'] = value;
    return _data;
  }
}