import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:garden_app/screen/plantdetails.dart';
import 'package:garden_app/utils/util.dart';

import '../model/plantModel.dart';

class HomeSC extends StatefulWidget {
  const HomeSC({super.key});

  @override
  State<HomeSC> createState() => _HomeSCState();
}

class _HomeSCState extends State<HomeSC> {

  final List<String> imgList = [
    'assets/img.jpg',
    'assets/img_1.jpg',
    'assets/img_2.jpg',
    'assets/img_3.jpg',
    'assets/img_4.jpg',
    'assets/img_5.jpg'
  ];

  List<PlantModel> plantList = [
    PlantModel(
        name: "Algerian Ivy",
        description:
            "Algerian Ivy, aka Hedera Algeriensis, is a species of evergreen ivy native to the North African coast, including coastal mountains in Algeria. It is one of the most versatile ivies available. It has larger leaves than a typical “English” ivy. It is more drought tolerant, bug resistant, and is more adaptable to warmer temperatures than its “English” counterpart.",
        price: 10,
        image: "assets/plant1.webp"),
    PlantModel(
        name: "Alocasia reginula",
        description:
            "Alocasia reginula, aka Alocasia 'Black Velvet', has deep green, almost black, velvety leaves with striking silvery veins running throughout. Known as one of the Jewel Alocasia, this beauty will stay quite small and compact throughout its lifetime. With royalty in its blood (the botanical name literally means Little Queen), these deep, pigmented leaves will make quite the statement. Alocasia is toxic to both people and animals, so they are not to be ingested.",
        price: 15,
        image: "assets/plant2.webp"),
    PlantModel(
        name: "Aloe Vera",
        description:
            "Aloe Vera, scientifically known as Aloe barbadensis miller, is a succulent plant renowned for its medicinal and cosmetic properties. Although there are over 300 species of Aloe, it is the Aloe Vera that is used most often for medicinal purposes. It is characterized by its thick, fleshy green leaves that grow in a rosette pattern. The leaves have serrated edges and are filled with a clear gel, known for its soothing and healing properties, especially in treating skin irritations and burns. Studies have shown that this plant has an additional benefit — it filters the toxins benzene and formaldehyde from indoor air! This makes it the perfect pick for the hub of your home.",
        price: 15,
        image: "assets/plant3.webp"),
    PlantModel(
        name: "The Anthurium Red",
        description:
            "The Anthurium Red, scientifically known as Anthurium andraeanum, also known as the Tail Flower, Flamingo Flower, or Laceleaf, is the world’s longest blooming houseplant, with blooms lasting up to eight weeks! Generally found in the wild across the warmest parts of South America and the Caribbean, the Anthurium is one of the most striking houseplants. The vivid red is not actually its flower, but a spathe - a brightly coloured leaf! The actual flowers are tiny little things on the spike in the middle of the spathe.",
        price: 18,
        image: "assets/plant4.webp"),
    PlantModel(
        name: "The Anthurium White",
        description:
            "The Anthurium White, scientifically known as Anthurium andraeanum, also known as the Tail Flower, Flamingo Flower, or Laceleaf, is the world’s longest blooming houseplant, with blooms lasting up to eight weeks! Generally found in the wild across the warmest parts of South America and the Caribbean, the Anthurium is one of the most striking houseplants. The gorgeous white is not actually its flower, but a spathe - a brightly coloured leaf! The actual flowers are tiny little things on the spike in the middle of the spathe.",
        price: 18,
        image: "assets/plant5.webp"),
    PlantModel(
        name: "The Orange Bird of Paradise",
        description:
            "The Orange Bird of Paradise, aka Strelitzia Reginae, is a species of evergreen tropical herbaceous plant, native to South Africa. It has narrow, clumping green leaves that are quite a bit smaller than its relative, the White Bird of Paradise, which is a lot more common. However, this variety provides a fantastic display of orange and blue bird-like flowers.",
        price: 18,
        image: "assets/plant6.webp"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appYellow,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 40,
                    width: 40,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    'Garden App',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: AppColors.appDarkGreen,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications_none_rounded,size: 30,),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            CarouselSlider.builder(
                itemCount: imgList.length,
                itemBuilder: (context, index, realIdx) {
                  return Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        imgList[index],
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 250,
                  aspectRatio: 1 / 1,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending Plants',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: AppColors.appDarkGreen,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      size: 25,
                      color: AppColors.appDarkGreen,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: plantList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                      MediaQuery.of(context).orientation ==
                          Orientation.landscape
                          ? 3
                          : 2,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 0,
                      childAspectRatio: 0.80),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlantDetailsSC(
                                  pm: plantList[index],
                                ),
                            ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.appDarkGreen,
                        ),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                plantList[index].image,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    plantList[index].name,
                                    style: TextStyle(
                                        color: AppColors
                                            .appWhite,
                                        fontSize: 16,
                                        decoration:
                                        TextDecoration.none,
                                        fontWeight:
                                        FontWeight.w600),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    '\$${plantList[index].price.toString()}',
                                    style: TextStyle(
                                        color: AppColors
                                            .appWhite,
                                        fontSize: 15,
                                        decoration:
                                        TextDecoration.none,
                                        fontWeight:
                                        FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
