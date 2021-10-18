import 'package:nedha_yt/data/category_model.dart';
import 'package:nedha_yt/data/food_model.dart';

const userAvatar =
    "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/d07bca98931623.5ee79b6a8fa55.jpg";

final List<FoodModel> foods = [
  FoodModel(
    id: 1,
    imageUrl:
        "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    name: "Banana Toast",
    description: "Sweet & Fresh",
    price: 3.45,
    rating: 4.9,
    calories: 234,
    cookingTime: 8,
    isFavorite: false,
    favoriteCount: 345,
  ),
  FoodModel(
    id: 2,
    imageUrl:
        "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=706&q=80",
    name: "Toasted Egg",
    description: "Salty & Crunchy",
    price: 4.75,
    rating: 4.7,
    calories: 249,
    cookingTime: 7,
    isFavorite: true,
    favoriteCount: 456,
  ),
  FoodModel(
    id: 3,
    imageUrl:
        "https://images.unsplash.com/photo-1560717845-968823efbee1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80",
    name: "Grilled Salmon",
    description: "Exceptional fish dish",
    price: 25.32,
    rating: 4.9,
    calories: 234,
    cookingTime: 8,
    isFavorite: true,
    favoriteCount: 567,
  ),
  FoodModel(
    id: 4,
    imageUrl:
        "https://images.unsplash.com/photo-1607532941433-304659e8198a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
    name: "Veggies Salad",
    description: "Healthy first",
    price: 5.69,
    rating: 3.8,
    calories: 104,
    cookingTime: 15,
    isFavorite: false,
    favoriteCount: 678,
  ),
  FoodModel(
    id: 5,
    imageUrl:
        "https://images.unsplash.com/photo-1574484284002-952d92456975?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y3Vycnl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    name: "Spicy Curry",
    description: "Taste of spices",
    price: 15.83,
    rating: 4.6,
    calories: 234,
    cookingTime: 8,
    isFavorite: false,
    favoriteCount: 789,
  ),
  FoodModel(
    id: 6,
    imageUrl:
        "https://images.unsplash.com/photo-1612929633738-8fe44f7ec841?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bm9vZGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    name: "Indomie Authentic Noodle",
    description: "Remarkable taste",
    price: 3.75,
    rating: 5.0,
    calories: 220,
    cookingTime: 10,
    isFavorite: false,
    favoriteCount: 524,
  ),
  FoodModel(
    id: 7,
    imageUrl:
        "https://images.unsplash.com/photo-1617093727343-374698b1b08d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG5vb2RsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    name: "Curry Noodle",
    description: "Remarkable taste",
    price: 5.68,
    rating: 4.7,
    calories: 275,
    cookingTime: 24,
    isFavorite: false,
    favoriteCount: 220,
  ),
  FoodModel(
    id: 8,
    imageUrl:
        "https://images.unsplash.com/photo-1585032226651-759b368d7246?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bm9vZGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    name: "Red Spicy Noodle",
    description: "Remarkable taste",
    price: 7.21,
    rating: 4.8,
    calories: 219,
    cookingTime: 18,
    isFavorite: false,
    favoriteCount: 540,
  ),
  FoodModel(
    id: 9,
    imageUrl:
        "https://images.unsplash.com/photo-1555126634-323283e090fa?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bm9vZGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    name: "Chicken Noodle",
    description: "Remarkable taste",
    price: 4.80,
    rating: 4.4,
    calories: 248,
    cookingTime: 14,
    isFavorite: false,
    favoriteCount: 1534,
  ),
  FoodModel(
    id: 10,
    imageUrl:
        "https://images.unsplash.com/photo-1596699691540-ea34b062cdc0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bm9vZGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    name: "Sedap Noodle",
    description: "Remarkable taste",
    price: 3.9,
    rating: 2.0,
    calories: 250,
    cookingTime: 10,
    isFavorite: false,
    favoriteCount: 88,
  ),
];

final List<CategoryModel> categories = [
  CategoryModel(
    id: 1,
    name: "Noodles",
    emojiIcon: "assets/emojis/noodles.svg",
  ),
  CategoryModel(
    id: 2,
    name: "Breads",
    emojiIcon: "assets/emojis/breads.svg",
  ),
  CategoryModel(
    id: 3,
    name: "Deserts",
    emojiIcon: "assets/emojis/deserts.svg",
  ),
  CategoryModel(
    id: 4,
    name: "Fast Foods",
    emojiIcon: "assets/emojis/fast_foods.svg",
  ),
  CategoryModel(
    id: 5,
    name: "Meats",
    emojiIcon: "assets/emojis/meats.svg",
  ),
  CategoryModel(
    id: 6,
    name: "Salads",
    emojiIcon: "assets/emojis/salads.svg",
  ),
  CategoryModel(
    id: 7,
    name: "Veggies",
    emojiIcon: "assets/emojis/veggies.svg",
  ),
];
