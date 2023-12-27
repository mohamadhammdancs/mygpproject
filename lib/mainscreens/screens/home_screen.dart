import 'package:flutter/material.dart';
import 'package:glass_login/cards/daily_dish_card.dart';
import 'package:glass_login/cards/kitchen_card.dart';
import 'package:glass_login/mainscreens/widgets/search_bar.dart';
import 'package:glass_login/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.whiteColor),
                      child: Icon(
                        Icons.density_medium_rounded,
                        color: AppColors.darkBlue,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text('Neighbor\'s Kitchen',
                      style:
                          TextStyle(fontSize: 20, color: AppColors.darkBlue)),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.whiteColor),
                      child: Icon(Icons.account_circle_rounded,
                          color: AppColors.darkBlue),
                    ),
                  )
                ],
              ),
            ),
            //searchbar
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SearchTextForm(),
            ),
            //horizental crollviw of deals dishes
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      width: 100,
                      child: Container(
                        width: 20,
                        height: 20,
                        color: const Color.fromARGB(255, 154, 208, 194),
                        child: const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                Icons.local_fire_department_rounded,
                                color: Color.fromARGB(255, 38, 80, 115),
                                size: 45,
                              ),
                            ),
                            Text(
                              'hot Deal',
                              style: TextStyle(
                                color: Color.fromARGB(255, 38, 80, 115),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            //text seperator
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'Todays Tab5at',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color.fromARGB(255, 38, 80, 115)),
                  ),
                ],
              ),
            ),
            //horizental crollviw of daily dishes
            Container(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return DailyDish();
                },
              ),
            ),
            //fillter drop downs
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: DropdownButton<String>(
                    borderRadius: BorderRadius.circular(14),
                    value: 'SortBy',
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Color.fromARGB(255, 38, 80, 115)),
                    underline: Container(
                      height: 2,
                      color: Color.fromARGB(255, 38, 80, 115),
                    ),
                    onChanged: (value) {},
                    // onChanged: (String newValue) {
                    //  print('User selected $newValue');
                    // },
                    items: <String>['SortBy', 'Name', 'rating']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                //   child: DropdownButton<String>(
                //     borderRadius: BorderRadius.circular(14),
                //     value: 'Cousin',
                //     icon: Icon(Icons.keyboard_arrow_down_rounded),
                //     iconSize: 24,
                //     elevation: 16,
                //     style: TextStyle(color: Color.fromARGB(255, 38, 80, 115)),
                //     underline: Container(
                //       height: 2,
                //       color: Color.fromARGB(255, 38, 80, 115),
                //     ),
                //     onChanged: (value) {},
                //     // onChanged: (String newValue) {
                //     //  print('User selected $newValue');
                //     // },
                //     items: <String>['Cousin', 'Arabic', 'Italian', 'Healthy']
                //         .map<DropdownMenuItem<String>>((String value) {
                //       return DropdownMenuItem<String>(
                //         value: value,
                //         child: Text(value),
                //       );
                //     }).toList(),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                //   child: DropdownButton<String>(
                //     borderRadius: BorderRadius.circular(14),
                //     value: 'Option 1',
                //     icon: Icon(Icons.keyboard_arrow_down_rounded),
                //     iconSize: 24,
                //     elevation: 16,
                //     style: TextStyle(color: Color.fromARGB(255, 38, 80, 115)),
                //     underline: Container(
                //       height: 2,
                //       color: Color.fromARGB(255, 38, 80, 115),
                //     ),
                //     onChanged: (value) {},
                //     // onChanged: (String newValue) {
                //     //  print('User selected $newValue');
                //     // },
                //     items: <String>['Option 1', 'Option 2', 'Option 3']
                //         .map<DropdownMenuItem<String>>((String value) {
                //       return DropdownMenuItem<String>(
                //         value: value,
                //         child: Text(value),
                //       );
                //     }).toList(),
                //   ),
                // ),
              ],
            ),
            //kitchens verical scro
            Expanded(
              child: ListView.builder(
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: KitchenCard(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      //nav bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomNavigationBar(
          currentIndex: 0,
          onTap: (int value) {
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,
                  color: Color.fromARGB(255, 38, 80, 115)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined,
                  color: Color.fromARGB(255, 38, 80, 115)),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded,
                  color: Color.fromARGB(255, 38, 80, 115)),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline,
                  color: Color.fromARGB(255, 38, 80, 115)),
              label: 'favourite',
            ),
          ],
        ),
      ),
    );
  }
}
