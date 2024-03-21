import 'package:flutter/material.dart';

import '../utils/util.dart';

class ProfileSC extends StatefulWidget {
  const ProfileSC({super.key});

  @override
  State<ProfileSC> createState() => _ProfileSCState();
}

class _ProfileSCState extends State<ProfileSC> {

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
                    'Profile',
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
          ],
        ),
      ),
    );
  }
}
