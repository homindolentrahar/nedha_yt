import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nedha_yt/theme/color.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.lightCold,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              textInputAction: TextInputAction.search,
              cursorColor: Theme.of(context).primaryColor,
              style: const TextStyle(
                color: AppColor.black,
                fontSize: 14,
              ),
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintText: "Search foods",
                hintStyle: TextStyle(
                  color: AppColor.gray,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          const Icon(
            Ionicons.search_outline,
            color: AppColor.gray,
            size: 20,
          ),
        ],
      ),
    );
  }
}
