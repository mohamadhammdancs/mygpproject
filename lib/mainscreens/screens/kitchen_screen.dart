import 'package:flutter/material.dart';
import 'package:glass_login/cards/single_dish_card.dart';
import 'package:glass_login/utils/app_colors.dart';

class KitchenScreen extends StatefulWidget {
  const KitchenScreen({super.key});

  @override
  State<KitchenScreen> createState() => _KitchenScreenState();
}

class _KitchenScreenState extends State<KitchenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.whiteColor),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: AppColors.darkBlue,
                    ),
                  ),
                ),
                const Spacer(),
                Text('Neighbor\'s Kitchen',
                    style: TextStyle(fontSize: 20, color: AppColors.darkBlue)),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.whiteColor),
                    child: Icon(Icons.shopping_cart_outlined,
                        color: AppColors.darkBlue),
                  ),
                )
              ],
            ),
          ),
          CircleAvatar(radius: 60),
          Text(
            'Kitchen Name',
            style: TextStyle(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Type of Food',
                style: TextStyle(
                    color: AppColors.primaryLight,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '3.5',
                style: TextStyle(
                    color: AppColors.darkBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Icon(
                Icons.star_rounded,
                size: 20,
                color: AppColors.primaryLight,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              endIndent: 20,
              indent: 20,
              color: AppColors.darkBlue,
            ),
          ),
          Text(
            'Main Dishes',
            style: TextStyle(color: AppColors.darkBlue),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: SingleDish(),
                );
              },
            ),
          ),
          Text(
            'Side Dishes',
            style: TextStyle(color: AppColors.darkBlue),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: SingleDish(),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
