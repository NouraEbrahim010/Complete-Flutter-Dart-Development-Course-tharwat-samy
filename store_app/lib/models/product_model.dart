class ProductModel {
  final dynamic id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModel rating;
  final String category;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
    required this.category,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      image: json['image'],
      rating: RatingModel.fromJson(json['rating']),
      category: json['category'],
    );
  }

  void operator [](int other) {}
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(rate: json['rate'].toDouble(), count: json['count']);
  }
}
// وظيفة  factory vonstructor انه ياخد map و يحولها ل model 
// اي انه يتعامل مع كل جزء من الداتا على انها كائن مستقل بذاته
// و بعدين يرجعلي ال model كامل