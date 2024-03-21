import 'package:flutter/material.dart';
import 'package:garden_app/screen/plantdetails.dart';

import '../model/plantModel.dart';
import '../utils/util.dart';

class PlantsSC extends StatefulWidget {
  const PlantsSC({super.key});

  @override
  State<PlantsSC> createState() => _PlantsSCState();
}

class _PlantsSCState extends State<PlantsSC> {

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
    PlantModel(
        name: "Calathea Makoyana",
        description:
        "Calathea Makoyana, aka Peacock Plant or Cathedral Windows, is a species of plant belonging to the genus Calathea in the family Marantaceae, native to eastern Brazil. Its pale green leaves are patterned with thin lines and larger ovals of dark green, making them look almost like feathers, hence the Peacock Plant nickname. The undersides of the leaves are dark purple, and the mature plant grows to around 2' tall, occasionally putting out a show of tiny white flowers.",
        price: 18,
        image: "assets/plant7.webp"),
    PlantModel(
        name: "Chinese Evergreen Golden Fluorite",
        description:
        "Chinese Evergreen Golden Fluorite, aka Aglaonema Golden Fluorite, features leaves that go from dark green to pale yellow with unique variegation on each leaf and a contrasting pink vein down the centre. The Chinese Evergreen family is among the top houseplants that purify the air and is also on Nasa's list of air-purifying plants. They have been found to be excellent at removing benzene and formaldehyde from the air inside your home or office! Not only that, but they are a rather hardy tropical, where they can handle most light and watering conditions.",
        price: 16,
        image: "assets/plant8.webp"),
    PlantModel(
        name: "Clusia Rosea",
        description:
        "Clusia Rosea, also known as the autograph tree, is part of the only genus of plants that have the unique ability to absorb carbon dioxide during night time. This makes it one of the most unique and fascinating plants to study. The plant boasts thick, leathery dark green leaves that are perfect for absorbing sunlight during the day, and the leaves are so tough that they can even be carved, giving the plant its distinctive nickname, autograph tree.",
        price: 18,
        image: "assets/plant9.webp"),
    PlantModel(
        name: "Dracaena Jade Jewel",
        description:
        "Dracaena Jade Jewel, aka Dracaena fragrans 'Jade Jewel', has upright bold canes and glossy sword-like leaves with prominent white stripes. Their low light tolerance and low maintenance are what make them an excellent addition to your home.",
        price: 18,
        image: "assets/plant10.webp"),
    PlantModel(
        name: "Euphorbia Acrurensis",
        description:"Euphorbia Acrurensis, aka Desert Candle Cactus, is a tall, rugged, easy-care succulent that originates from South and West Africa. It has an upright stem and ridges of short-lived leaves and thorns, which makes a fascinating architectural addition to any room.",
        price: 600,
        image: "assets/plant11.webp"),
    PlantModel(
        name: "Hoya Callistophylla",
        description:"Hoya Callistophylla, a stunning variety within the Hoya genus, is admired for its large, thick leaves adorned with high-contrast veining. Native to Southeast Asia, this epiphyte typically grows under the dense canopies of tropical forests, climbing other trees and plants for support. The leaves are a vibrant medium green, accented with dark veining, providing a striking visual appeal. Even in its juvenile form, the leaves are notably sizeable, and the plant is recognized for its slow growth rate. Despite its exotic appearance, Hoya Callistophylla is known to be relatively easy to care for, making it a splendid addition to indoor plant collections.",
        price: 20,
        image: "assets/plant12.webp"),
    PlantModel(
        name: "Iresine Herbstii",
        description:"Iresine Herbstii 'Aureoreticulata', commonly referred to as the Golden Vein Bloodleaf or Yellow Vein Bloodleaf, is a fascinating plant that can be grown as an annual outside during the summer or as a houseplant throughout the year. This variety has irregular-shaped green leaves with yellow veining and the occasional fully beet-red leaf, you can even look forward to some leaves having both colour ways, creating a delightful contrast.",
        price: 10,
        image: "assets/plant13.webp"),
    PlantModel(
        name: "Maranta leuconeura",
        description:"Maranta leuconeura var. erythroneura, aka Maranta Red or Red Prayer Plant, is a pet-friendly prayer plant known for its dramatic foliage. Native to the tropical forests of Brazil, it has striking oval leaves, with a mixture of greens and a herringbone-like pattern of light yellow veining. The bottoms of the leaves are a beautiful contrasting red.",
        price: 15,
        image: "assets/plant14.webp"),
    PlantModel(
        name: "Peperomia Schumi Red",
        description:"Peperomia Schumi Red, aka Peperomia caperata 'Schumi Red' or Peperomia Red Ripple, is a species of flowering plant in the family Piperaceae, native to Brazil. This variety has deeply ridged, heart-shaped leaves coming in an eye-catching deep red, and narrow spikes of white flowers. Like other Peperomias, it is non-toxic, making it safe to keep around your furry friends.",
        price: 30,
        image: "assets/plant15.webp"),
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
                    'Plants',
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
