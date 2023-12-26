import 'package:flutter/material.dart';
import 'package:glass_login/cards/daily_dish_card.dart';
import 'package:glass_login/cards/kitchen_card.dart';
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
      backgroundColor: Color.fromARGB(255, 236, 244, 214),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(
                  Icons.density_small_sharp,
                  color: Color.fromARGB(255, 38, 80, 115),
                ),
                Spacer(),
                Icon(Icons.account_circle_rounded,
                    color: Color.fromARGB(255, 38, 80, 115))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBar(),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Container(
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
                );
              },
            ),
          ),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(14),
                  value: 'Cousin',
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
                  items: <String>['Cousin', 'Arabic', 'Italian', 'Healthy']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(14),
                  value: 'Option 1',
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
                  items: <String>['Option 1', 'Option 2', 'Option 3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                  child: KitchenCard(),
                );
              },
            ),
          ),
        ],
      ),
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

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.darkBlue,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: AppColors.darkBlue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: AppColors.darkBlue,
            )),
        labelStyle: TextStyle(
          color: AppColors.darkBlue,
        ),
        labelText: 'Search Food',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
