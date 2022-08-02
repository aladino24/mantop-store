import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:mantap_store/pages/home/food_page_body.dart';
import 'package:mantap_store/utils/colors.dart';
import 'package:mantap_store/utils/dimension.dart';
import 'package:mantap_store/widgets/big_text.dart';
import 'package:mantap_store/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    //  print("height: ${MediaQuery.of(context).size.height}");
    return Scaffold(
        body: Column(
      children: [
        //Showing header
        Container(
          child: Container(
            margin: EdgeInsets.only(
                top: Dimension.height45, bottom: Dimension.height15),
            padding: EdgeInsets.only(
                left: Dimension.width20, right: Dimension.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Indonesia",
                      color: AppColors.mainColor,
                      size: 26,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "Semarang",
                          color: AppColors.textColor,
                          size: 15,
                          height: 1.2,
                        ),
                        const Icon(
                          Icons.arrow_drop_down_rounded,
                          color: AppColors.textColor,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimension.height45,
                    height: Dimension.height45,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Dimension.iconSize24,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(Dimension.radius15),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        //Showinf the body
        Expanded(child: SingleChildScrollView(child: FoodPageBody()))
      ],
    ));
  }
}
