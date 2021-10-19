import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nedha_yt/data/food_model.dart';
import 'package:nedha_yt/theme/color.dart';

class FoodItem extends StatelessWidget {
  final FoodModel model;

  const FoodItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 176,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: ShaderMask(
                  shaderCallback: (rect) => LinearGradient(
                    colors: [
                      AppColor.black.withOpacity(0.6),
                      AppColor.black.withOpacity(0.15),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ).createShader(rect),
                  blendMode: BlendMode.srcATop,
                  child: Hero(
                    tag: model.id,
                    child: CachedNetworkImage(
                      imageUrl: model.imageUrl,
                      width: 176,
                      height: 176,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                top: 8,
                right: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      minWidth: 0,
                      height: 0,
                      elevation: 0,
                      highlightElevation: 0,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(8),
                      color: model.isFavorite
                          ? Colors.red.withOpacity(0.5)
                          : AppColor.white,
                      child: Icon(
                        model.isFavorite
                            ? Ionicons.heart
                            : Ionicons.heart_outline,
                        size: 20,
                        color: model.isFavorite ? Colors.red : AppColor.black,
                      ),
                      onPressed: () {},
                    ),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          const TextSpan(
                            text: "\$ ",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          TextSpan(
                            text: "${model.price}",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.name,
                        style: const TextStyle(
                          color: AppColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        model.description,
                        style: const TextStyle(
                          color: AppColor.gray,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 0,
                  height: 0,
                  elevation: 0,
                  highlightElevation: 0,
                  color: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.all(4),
                  shape: const CircleBorder(),
                  child: const Icon(
                    Ionicons.add_outline,
                    size: 20,
                    color: AppColor.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
