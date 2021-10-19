import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nedha_yt/data/food_model.dart';
import 'package:nedha_yt/theme/color.dart';

class DetailPage extends StatefulWidget {
  final FoodModel food;

  const DetailPage({Key? key, required this.food}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;
  int amount = 1;

  @override
  void initState() {
    isFavorite = widget.food.isFavorite;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ShaderMask(
                  shaderCallback: (rect) => LinearGradient(
                    colors: [
                      AppColor.black,
                      AppColor.black.withOpacity(0.15),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ).createShader(rect),
                  blendMode: BlendMode.srcATop,
                  child: Hero(
                    tag: widget.food.id,
                    child: CachedNetworkImage(
                      imageUrl: widget.food.imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 360,
                    ),
                  ),
                ),
                Positioned(
                  top: 32,
                  left: 0,
                  child: MaterialButton(
                    elevation: 0,
                    highlightElevation: 0,
                    color: AppColor.white,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Ionicons.arrow_back,
                      color: AppColor.black,
                      size: 20,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                Positioned(
                  bottom: 32,
                  right: 24,
                  child: MaterialButton(
                    minWidth: 0,
                    height: 0,
                    elevation: 0,
                    highlightElevation: 0,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8),
                    color: isFavorite
                        ? Colors.red.withOpacity(0.5)
                        : AppColor.white,
                    child: Icon(
                      isFavorite ? Ionicons.heart : Ionicons.heart_outline,
                      size: 32,
                      color: isFavorite ? Colors.red : AppColor.black,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          "assets/emojis/fast_foods.svg",
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "Food",
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.black,
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.food.description,
                    style: TextStyle(
                      color: AppColor.black.withOpacity(0.75),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/rating.svg"),
                          const SizedBox(width: 8),
                          Text(
                            widget.food.rating.toString(),
                            style: const TextStyle(
                              color: AppColor.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 32),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/calories.svg"),
                          const SizedBox(width: 8),
                          Text(
                            widget.food.calories.toString() + " Kcal",
                            style: const TextStyle(
                              color: AppColor.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 32),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/cooking-time.svg"),
                          const SizedBox(width: 8),
                          Text(
                            widget.food.cookingTime.toString() + " min",
                            style: const TextStyle(
                              color: AppColor.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras malesuada varius aliquet. Suspendisse potenti. Praesent erat ante, maximus volutpat nisl eget, egestas feugiat nisi. Suspendisse rhoncus egestas ipsum, id cursus lectus tempus quis. Praesent enim justo, blandit sit amet lacus in, eleifend maximus augue. Aenean facilisis diam vitae mi sagittis, ut fermentum augue commodo. Phasellus dictum accumsan mi, at luctus libero. Vestibulum ut ornare est. Mauris fermentum odio varius odio gravida ullamcorper. Nam eget rutrum justo. Phasellus vitae auctor ante, a suscipit tellus. Morbi gravida, mauris a finibus suscipit, velit nisi elementum nunc, eget aliquam justo dui facilisis velit. Integer ullamcorper, ligula et fermentum commodo, erat justo venenatis dolor, at tristique dui justo aliquet turpis. Cras convallis scelerisque sem vehicula gravida. Aliquam aliquam pretium metus, eget commodo leo faucibus quis.",
                    maxLines: 6,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: AppColor.black.withOpacity(0.5),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        elevation: 0,
                        highlightElevation: 0,
                        color: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Ionicons.cart_outline,
                                  color: AppColor.white,
                                  size: 24,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Checkout",
                                  style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  color: AppColor.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  const TextSpan(
                                    text: "\$",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: (widget.food.price * amount)
                                        .toStringAsFixed(2),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Amount",
                          style: TextStyle(
                            color: AppColor.black.withOpacity(0.5),
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MaterialButton(
                              minWidth: 0,
                              elevation: 0,
                              highlightElevation: 0,
                              color: AppColor.black,
                              padding: const EdgeInsets.all(8),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Ionicons.remove,
                                color: AppColor.white,
                                size: 16,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (amount > 1) {
                                    amount--;
                                  }
                                });
                              },
                            ),
                            const SizedBox(width: 8),
                            Text(
                              amount.toString(),
                              style: const TextStyle(
                                color: AppColor.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            MaterialButton(
                              minWidth: 0,
                              elevation: 0,
                              highlightElevation: 0,
                              color: AppColor.black,
                              padding: const EdgeInsets.all(8),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Ionicons.add,
                                color: AppColor.white,
                                size: 16,
                              ),
                              onPressed: () {
                                setState(() {
                                  amount++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
