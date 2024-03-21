import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garden_app/model/plantModel.dart';

import '../utils/util.dart';

class PlantDetailsSC extends StatefulWidget {
  PlantModel? pm;
  PlantDetailsSC({this.pm});

  @override
  State<PlantDetailsSC> createState() => _PlantDetailsSCState();
}

class _PlantDetailsSCState extends State<PlantDetailsSC> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appYellow,
      appBar: AppBar(
        backgroundColor: AppColors.appYellow,
        title: Text(
            widget.pm!.name,
          style: TextStyle(
            color: AppColors
            .appDarkGreen,
            fontSize: 22,
            decoration:
            TextDecoration.none,
            fontWeight:
            FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  widget.pm!.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    widget.pm!.description,
                    style: TextStyle(
                        color: AppColors
                            .appDarkGreen,
                        fontSize: 16,
                        decoration:
                        TextDecoration.none,
                        fontWeight:
                        FontWeight.normal),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.appLightGreen
        ),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Price : ',
              style: TextStyle(
                  fontSize: 25
              ),
              textAlign: TextAlign.right,
            ),
            Text(
              '\$${widget.pm!.price.toString()}',
              style: TextStyle(
                  color: AppColors
                      .appWhite,
                  fontSize: 25,
                  decoration:
                  TextDecoration.none,
                  fontWeight:
                  FontWeight.w600),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
