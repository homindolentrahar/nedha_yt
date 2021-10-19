import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nedha_yt/data/datas.dart';
import 'package:nedha_yt/theme/color.dart';
import 'package:nedha_yt/ui/detail_page.dart';
import 'package:nedha_yt/ui/widgets/category_item.dart';
import 'package:nedha_yt/ui/widgets/food_item.dart';
import 'package:nedha_yt/ui/widgets/food_list_item.dart';
import 'package:nedha_yt/ui/widgets/promo_banner.dart';
import 'package:nedha_yt/ui/widgets/searchbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(left: 24, right: 24, top: 48),
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(
                                  text: "Hello, ",
                                  style: TextStyle(
                                    color: AppColor.gray,
                                  ),
                                ),
                                TextSpan(
                                  text: "Jons Frutang",
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 4),
                          SvgPicture.asset(
                            "assets/emojis/greet.svg",
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Have something in mind to eat?",
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 48),
                ClipRRect(
                  borderRadius: BorderRadius.circular(360),
                  child: CachedNetworkImage(
                    imageUrl: userAvatar,
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Searchbar
            const Searchbar(),
            const SizedBox(height: 32),
            // Promo Banner
            const PromoBanner(),
            const SizedBox(height: 32),
            const Text(
              "Recommended",
              style: TextStyle(
                color: AppColor.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 232,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: foods.take(5).length,
                itemBuilder: (ctx, index) {
                  final model = foods[index];

                  // Food item widget
                  return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => DetailPage(food: model),
                          ),
                        );
                      },
                      child: FoodItem(model: model));
                },
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 36,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: categories.length,
                itemBuilder: (ctx, index) {
                  final model = categories[index];

                  // Category item widget
                  return CategoryItem(model: model);
                },
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 360,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: foods.sublist(5, foods.length).length,
                itemBuilder: (ctx, index) {
                  final noodles = foods.sublist(5, foods.length);

                  final model = noodles[index];
                  // Food list item widget
                  return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => DetailPage(food: model),
                          ),
                        );
                      },
                      child: FoodListItem(model: model));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
