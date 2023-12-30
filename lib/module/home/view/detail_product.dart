import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import '../controller/detail_controller.dart';

class DetailProductView extends StatefulWidget {
  const DetailProductView({Key? key}) : super(key: key);

  Widget build(context, DetailProductController controller) {
    controller.view = this;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Detail Product",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Icon(
              Icons.add_shopping_cart_rounded,
              color: Colors.black,
              size: 30.0,
            ),
            SizedBox(
              width: 15.0,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                          ),
                          color: Colors.blueGrey,
                        ),
                      ),
                      const Center(
                        child: SizedBox(
                          width: 300,
                          height: 300,
                          child: ModelViewer(
                            src: 'assets/images/iphone.glb',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 24,
                        offset: Offset(0, 11),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Iphone 13 Pro",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\$150",
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Beli",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        """
Desain dan Layar:

Desain Serupa dengan iPhone 12: iPhone 13 memiliki desain yang mirip dengan pendahulunya, iPhone 12, dengan bezel yang tipis dan bingkai stainless steel.
Berbagai Varian Warna: Tersedia dalam beberapa pilihan warna yang menarik.
Layar Super Retina XDR: Layar OLED dengan teknologi Super Retina XDR memberikan kualitas gambar yang tajam dan warna yang hidup.
""",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  DetailProductController createState() => DetailProductController();
}
