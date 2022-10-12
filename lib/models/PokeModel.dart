class Pokemon {
  int id;
  String name;
  String url;
  String img;
  int height;


  Pokemon.fromJson(Map<String, dynamic> data)
      : id    = data['id'],
        name  = data['name'],
        url   = data['url'] ?? 'google.com',
        height = data['height'],
        img   = data['sprites']['other']['official-artwork']['front_default'] ?? 'google.com';


  Map<String, dynamic> toJson() => {
        'id'  : id,
        'name': name,
        'height': height,
        'url' : url,
        'img' : img,
        
      };
}

