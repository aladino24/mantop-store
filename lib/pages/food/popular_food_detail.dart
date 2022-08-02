import 'package:flutter/material.dart';
import 'package:mantap_store/utils/colors.dart';
import 'package:mantap_store/utils/dimension.dart';
import 'package:mantap_store/widgets/app_column.dart';
import 'package:mantap_store/widgets/app_icon.dart';
import 'package:mantap_store/widgets/big_text.dart';
import 'package:mantap_store/widgets/expandable_text_widget.dart';
import 'package:mantap_store/widgets/icon_and_text_widget.dart';
import 'package:mantap_store/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background detail image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimension.popularFoodImgSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/nasgor.png",
                        ))),
              )),
          //icon top
          Positioned(
              top: Dimension.height45,
              left: Dimension.width20,
              right: Dimension.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  Row(
                    children: [
                      AppIcon(icon: Icons.shopping_cart_checkout),
                      SizedBox(
                        width: Dimension.width10,
                      ),
                      AppIcon(icon: Icons.chat_bubble),
                      SizedBox(
                        width: Dimension.width10,
                      ),
                    ],
                  ),
                ],
              )),
          //detail food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimension.popularFoodImgSize - 20,
              child: Container(
                  padding: EdgeInsets.only(
                    left: Dimension.width20,
                    right: Dimension.width20,
                    top: Dimension.height20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimension.radius20),
                        topRight: Radius.circular(Dimension.radius20),
                      ),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BigText(
                                text: "Nasi Goreng",
                                size: Dimension.font26,
                              ),
                              AppIcon(icon: Icons.share)
                            ],
                          ),
                          SizedBox(
                            height: Dimension.height10,
                          ),
                          Container(
                            child: BigText(
                              text: "Rp 10.000",
                              size: Dimension.font22,
                              color: AppColors.mainColor,
                            ),
                          ),
                          SizedBox(
                            height: Dimension.height20,
                          ),
                          Row(
                            children: [
                              Wrap(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    Icons.star,
                                    color: AppColors.mainColor,
                                    size: 15,
                                  );
                                }),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SmallText(text: "4.5"),
                              SizedBox(
                                width: 10,
                              ),
                              SmallText(text: "135"),
                              SizedBox(
                                width: 10,
                              ),
                              SmallText(text: "Comments"),
                            ],
                          ),
                          SizedBox(
                            height: Dimension.height20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              IconAndTextWidget(
                                icon: Icons.circle_sharp,
                                text: "Normal",
                                iconColor: AppColors.iconColor1,
                              ),
                              IconAndTextWidget(
                                icon: Icons.location_on,
                                text: "1.5 km",
                                iconColor: AppColors.mainColor,
                              ),
                              IconAndTextWidget(
                                icon: Icons.access_time_rounded,
                                text: "15 min",
                                iconColor: AppColors.iconColor2,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.height20,
                      ),
                      BigText(text: "Description"),
                      Expanded(
                        child: SingleChildScrollView(
                          child: ExpandableTextWidget(
                              text:
                                  "Nasi goreng merupakan sajian nasi yang digoreng dalam sebuah wajan atau penggorengan menghasilkan cita rasa berbeda karena dicampur dengan bumbu-bumbu seperti garam, bawang putih, bawang merah, merica dan kecap manis. Selain itu, ditambahkan bahan-bahan pelengkap seperti telur, sayur-sayuran, makanan laut, atau daging. Makanan tersebut sering kali disantap sendiri atau disertai dengan hidangan lainnya. Nasi goreng adalah komponen populer dari masakan Asia Timur, Tenggara dan Selatan pada wilayah tertentu. Sebagai hidangan buatan rumah, nasi goreng biasanya dibuat dengan bahan-bahan yang tersisa dari hidangan lainnya, yang berujung pada ragam yang tak terbatas. Menjadi penopang ekonomi, hal yang sama juga terjadi pada mi goreng",
                                  
                                  ),
                        ),
                      )
                    ],
                  )))
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimension.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimension.height30,
          bottom: Dimension.height30,
          left: Dimension.width20,
          right: Dimension.width20,
        ),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimension.radius20 * 2),
              topRight: Radius.circular(Dimension.radius20 * 2),
            )),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            padding: EdgeInsets.only(
              top: Dimension.height20,
              bottom: Dimension.height20,
              left: Dimension.width20,
              right: Dimension.width20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimension.radius20),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.remove,
                  color: AppColors.signColor,
                ),
                SizedBox(
                  width: Dimension.width10 / 2,
                ),
                BigText(text: "0"),
                SizedBox(
                  width: Dimension.width10 / 2,
                ),
                Icon(
                  Icons.add,
                  color: AppColors.signColor,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: Dimension.height20,
              bottom: Dimension.height20,
              left: Dimension.width20,
              right: Dimension.width20,
            ),
            child: BigText(
              text: "Add to Cart",
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimension.radius20),
              color: AppColors.mainColor,
            ),
          ),
        ]),
      ),
    );
  }
}
