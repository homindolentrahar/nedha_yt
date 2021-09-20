import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nedha_yt/data/category_model.dart';
import 'package:nedha_yt/theme/color.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel model;

  const CategoryItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: model.name == "Noodles"
            ? Theme.of(context).primaryColor
            : AppColor.lightCold,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            model.emojiIcon,
            height: 16,
          ),
          const SizedBox(width: 4),
          Text(
            model.name,
            style: TextStyle(
              color: model.name == "Noodles" ? AppColor.white : AppColor.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
