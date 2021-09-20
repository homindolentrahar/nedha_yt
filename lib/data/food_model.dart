class FoodModel {
  final int id;
  final String imageUrl;
  final String name;
  final String description;
  final double price;
  final bool isFavorite;
  final int favoriteCount;

  FoodModel({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.isFavorite,
    required this.favoriteCount,
  });
}
