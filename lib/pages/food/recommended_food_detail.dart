import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mantap_store/utils/colors.dart';
import 'package:mantap_store/utils/dimension.dart';
import 'package:mantap_store/widgets/app_icon.dart';
import 'package:mantap_store/widgets/big_text.dart';
import 'package:mantap_store/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                // margin: EdgeInsets.only(bottom: Dimension.width20, top: Dimension.width20),

                child: Center(
                    child: BigText(
                  text: "Nasi Goreng",
                  size: Dimension.font26,
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimension.width20),
                    topRight: Radius.circular(Dimension.width20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/nasgor.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                    text:
                        "Nasi goreng memiliki awal yang sama dengan versi nasi goreng lainnya; sebagai cara untuk menghindari pemborosan nasi. Menggoreng nasi dapat mencegah penyebaran kuman, bakteri, mikroba berbahaya, terutama dalam teknologi pra-pembekuan di Indonesia dan juga menghindari kebutuhan untuk membuang makanan yang berharga. Nasi goreng secara tradisional disajikan di rumah untuk sarapan dan secara tradisional dibuat dari nasi sisa dari malam sebelumnya. Selain bahan-bahan seperti bawang merah, tomat, paprika dan cabai, nasi goreng dengan potongan daging ayam atau sapi; biasanya sisa dari masakan daging ayam atau sapi.Nasi goreng sering digambarkan sebagai modifikasi nasi goreng Indonesia dan dengan resep nasi goreng lainnya di Asia, telah disarankan untuk melacak asal-usulnya dari nasi goreng Tiongkok Selatan. Namun, tidak jelas kapan Indonesia mulai menerima nasi goreng Tiongkok dan membuat versi mereka sendiri. Perdagangan antara Tiongkok dan Kepulauan Indonesia berkembang sejak zaman Kerajaan Sriwijaya sekitar abad ke-10 dan semakin intensif pada zaman Kerajaan Majapahit sekitar abad ke-15. Pada saat itu para imigran Tiongkok mulai menetap di Kepulauan Nusantara, membawa serta budaya dan masakan mereka. Orang Tionghoa biasanya mendukung makanan panas yang baru dimasak, dan dalam budaya mereka adalah tabu untuk membuang bahan makanan yang belum dimakan. Akibatnya, nasi sisa hari sebelumnya sering dimasak kembali di pagi hari. Dahulu, Indonesia mungkin hanya nasi sisa yang dijemur untuk membuat intip atau rengginang (kerupuk nasi), nasi kering juga bisa digiling untuk membuat tepung beras."),
                margin: EdgeInsets.only(
                    left: Dimension.width20, right: Dimension.width20),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimension.width20 * 2.5,
              right: Dimension.width20 * 2.5,
              top: Dimension.height10,
              bottom: Dimension.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimension.iconSize24,
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
                BigText(
                  text: "\Rp 9000" + " X " + "0",
                  color: Colors.black87,
                  size: Dimension.font26,
                ),
                AppIcon(
                  iconSize: Dimension.iconSize24,
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                )
              ],
            ),
          ),
          Container(
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
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )
                  ),
                  Column(
                    children: [
                      BigText(text: "Total Pesanan"),
                      SizedBox(
                        height: Dimension.height10,
                      ),
                      Container(
                        child: BigText(text: "Rp 200000",),
                      ),
                    ],
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
        ],
      ),
    );
  }
}
