class FoodModel {
  final int id;
  final String imageUrl;
  final String name;
  final String description;
  final double price;
  final double rating;
  final int calories;
  final int cookingTime;
  final bool isFavorite;
  final int favoriteCount;

  FoodModel({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.calories,
    required this.cookingTime,
    required this.isFavorite,
    required this.favoriteCount,
  });
}
