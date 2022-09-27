class Pokemon {
  int id;
  String name;
  String url;
  String img;


  Pokemon.fromJson(Map<String, dynamic> data)
      : id    = data['id'],
        name  = data['name'],
        url   = data['url'] ?? 'google.com',
        img   = data['img'] ?? 'google.com';


  Map<String, dynamic> toJson() => {
        'id'  : id,
        'name': name,
        'url' : url,
        'img' : img,
      };
}
