import 'package:flutter/material.dart';
import 'package:glass_login/utils/app_colors.dart';

class SingleDishScreen extends StatefulWidget {
  const SingleDishScreen({super.key});

  @override
  State<SingleDishScreen> createState() => _SingleDishScreenState();
}

class _SingleDishScreenState extends State<SingleDishScreen> {
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
            'Dish Name',
            style: TextStyle(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'priceJOD',
                style: TextStyle(
                    color: AppColors.primaryLight,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                '#',
                style: TextStyle(
                    color: AppColors.darkBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Text(
                'orders',
                style: TextStyle(
                    color: AppColors.primaryLight,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              'Grilled salmon paired with a colorful mix of sautéed vegetables. A flavorful harmony of seasoned fish atop a bed of tender-crisp carrots, broccoli, and bell peppers.',
              style: TextStyle(
                  color: AppColors.primaryLight,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  wordSpacing: 5),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Add note to order:',
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(14)),
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 6,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "  Write Here",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color.fromARGB(0, 255, 82, 82)))),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
            child: FractionallySizedBox(
              widthFactor: 1,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.primaryHighContrast,
                    foregroundColor: AppColors.whiteColor,
                  ),
                  onPressed: () {},
                  // onPressed: () async {
                  //   loadingDialog(context);
                  //   FocusManager.instance.primaryFocus?.unfocus();
                  //   Future.delayed(const Duration(seconds: 2)).then(
                  //     (value) => Navigator.pop(context),
                  //   );
                  // },
                  child: const Text("Add to Cart")),
            ),
          ),
        ],
      )),
    );
  }
}
