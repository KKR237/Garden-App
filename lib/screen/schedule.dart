import 'package:flutter/material.dart';
import 'package:garden_app/utils/util.dart';
import 'package:intl/intl.dart';

class ScheduleSC extends StatefulWidget {
  const ScheduleSC({super.key});

  @override
  State<ScheduleSC> createState() => _ScheduleSCState();
}

class _ScheduleSCState extends State<ScheduleSC> {
  TextEditingController plantnameCtrl = TextEditingController();
  DateTime selectedDate = DateTime.now();
  String selected_date = 'Select Date';
  String weightType = '2 Cups';

  final List<String> placeList = [
    'Office',
    'Bed Room',
    'Kitchen',
    'Balcony',
    'Living Room',
    'Drawing Room',
    'Kids Room',
  ];

  final List<String> days = [
    'M',
    'T',
    'W',
    'TH',
    'F',
    'SA',
    'SU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appYellow,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Watering Schedule',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: AppColors.appDarkGreen,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.add_circle_rounded,
                      size: 30,
                      color: AppColors.appDarkGreen,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: CircleAvatar(
                  radius: 75,
                  child: ClipOval(
                    child: Image.asset('assets/plant3.webp'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 25),
              child: Text(
                'Plant Name :',
                style: TextStyle(
                    color: AppColors.appDarkGreen,
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: TextField(
                controller: plantnameCtrl,
                textInputAction: TextInputAction.done,
                // decoration: const InputDecoration(
                //   hintText: "Plant name",
                //   hintStyle: TextStyle(
                //     color: Colors.grey,
                //     fontSize: 16,
                //   ),
                // ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 25),
              child: Text(
                'Plant Place :',
                style: TextStyle(
                    color: AppColors.appDarkGreen,
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 35,
              margin: EdgeInsets.only(left: 25, right: 25,top: 10),
              child: ListView.builder(
                itemCount: placeList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.appDarkGreen
                    ),
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(right: 5),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: Text(
                        placeList[index],
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.appWhite,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 25),
              child: Text(
                'Watering Schedule :',
                style: TextStyle(
                    color: AppColors.appDarkGreen,
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 35,
              margin: EdgeInsets.only(left: 25, right: 25,top: 10),
              child: ListView.builder(
                itemCount: days.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.appDarkGreen
                    ),
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(right: 8),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: Text(
                        days[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.appWhite,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                  child: Text(
                    'Date :',
                    style: TextStyle(
                        color: AppColors.appDarkGreen,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                  child: Text(
                    'Time :',
                    style: TextStyle(
                        color: AppColors.appDarkGreen,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      final DateTime selected = showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(1960),
                        lastDate: DateTime(2025),
                      ).then((pickedDate) {
                        setState(() {
                          var inputFormat = DateFormat('dd MMM yyyy');
                          selected_date = inputFormat.format(pickedDate!);
                        });
                      }) as DateTime;
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(left: 25,top: 5),
                      decoration: BoxDecoration(
                          color: AppColors.appDarkGreen,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Text(
                        selected_date,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      final DateTime selected = showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(1960),
                        lastDate: DateTime(2025),
                      ).then((pickedDate) {
                        setState(() {
                          var inputFormat = DateFormat('dd MMM yyyy');
                          selected_date = inputFormat.format(pickedDate!);
                        });
                      }) as DateTime;
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(left: 25,top: 5),
                      decoration: BoxDecoration(
                          color: AppColors.appDarkGreen,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Text(
                        'Select Time',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                  child: Text(
                    'Water Amount :',
                    style: TextStyle(
                        color: AppColors.appDarkGreen,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  width: 110,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        weightType,
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.appDarkGreen,
                            fontWeight: FontWeight.bold),
                      ),
                      PopupMenuButton(
                        icon: Icon(Icons.keyboard_arrow_down,
                            color: AppColors.appDarkGreen),
                        iconSize: 25,
                        initialValue: weightType,
                        itemBuilder: (_) => <PopupMenuItem<String>>[
                          new PopupMenuItem<String>(
                              child: const Text('2 Cups'), value: '2 Cups'),
                          new PopupMenuItem<String>(
                              child: const Text('3 Cups'), value: '3 Cups'),
                          new PopupMenuItem<String>(
                              child: const Text('4 Cups'), value: '4 Cups'),
                          new PopupMenuItem<String>(
                              child: const Text('5 Cups'), value: '5 Cups'),
                        ],
                        onSelected: (value) async {
                          setState(() {
                            weightType = '${value}';
                          });
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.only(left: 0),
              margin:
              EdgeInsets.only(bottom: 10, top: 30, left: 40, right: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.appDarkGreen,
              ),
              child: MaterialButton(
                onPressed: () {

                },
                child: Text(
                  'Add Plant to my Garden',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
