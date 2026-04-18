class ProductsModel {
  final int id;
  final String name;
  final String tagline;
  final String description;
  final String price;
  final String currency;
  final String image;

  ProductsModel({
    required this.id,
    required this.name,
    required this.tagline,
    required this.description,
    required this.price,
    required this.currency,
    required this.image,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      id: json["id"],
      name: json["name"],
      tagline: json["tagline"],
      description: json["description"],
      price: json["price"],
      currency: json["currency"],
      image: json["image"],
    );
  }
}
