import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:virtualizemarket/core.dart';
import 'package:virtualizemarket/module/home/view/detail_product.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Icon(
          Icons.move_up_rounded,
          size: 30.0,
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 30.0,
          ),
          SizedBox(
            width: 15.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: ScrollController(),
                child: Row(
                  children: List.generate(
                    controller.categoriList.length,
                    (index) {
                      var item = controller.categoriList[index];

                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 8.0,
                        ),
                        margin: const EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: item == "All" ? Colors.orange : Colors.grey,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            item,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 11.0,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Builder(builder: (context) {
                List images = [
                  "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                  "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                  "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                ];
                return CarouselSlider(
                  options: CarouselOptions(
                      height: 250.0,
                      autoPlay: false,
                      viewportFraction: 0.5,
                      padEnds: false,
                      enlargeCenterPage: true,
                      clipBehavior: Clip.hardEdge,
                      animateToClosest: false),
                  items: images.map((imageUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailProductView(),
                              ),
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width /
                                1.8, // Ubah nilai lebar di sini
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(6.0),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  imageUrl,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                );
              }),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                "Trending Product",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.separated(
                itemCount: 3,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 4.0,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwSh5r7huxl4TPt8w8WoyNlPmKALeyEkEmjA&usqp=CAU",
                            width: 100.0,
                            height: 100.0,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Fabric Sofas ",
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_border_rounded,
                                    size: 15.0,
                                  ),
                                ],
                              ),
                              Text(
                                "Category : | Corner and Sofabeds |",
                                style: TextStyle(
                                  fontSize: 13.0,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.remove_red_eye_outlined,
                                    size: 15.0,
                                  ),
                                  Text(
                                    "1.9K",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    size: 15.0,
                                  ),
                                  Text(
                                    "1K",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Icon(
                                    Icons.shopify,
                                    size: 15.0,
                                  ),
                                  Text(
                                    "1.9K",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
