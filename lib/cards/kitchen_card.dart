import 'package:flutter/material.dart';
import 'package:glass_login/mainscreens/screens/kitchen_screen.dart';
import 'package:glass_login/utils/app_colors.dart';

class KitchenCard extends StatelessWidget {
  const KitchenCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const KitchenScreen()),
        );
      },
      child: SizedBox(
        height: 100,
        child: Card(
          color: AppColors.primaryHighContrast,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 75,
                  height: 75,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          15) // Adjust the radius as needed
                      ),
                  child: Image.network(
                    'https://picsum.photos/seed/picsum/200/300',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'kitchen name',
                      style: TextStyle(
                          color: AppColors.darkBlue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          'cousine',
                          style: TextStyle(
                              fontSize: 16, color: AppColors.whiteColor),
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        Text(
                          '2.7',
                          style: TextStyle(
                              color: AppColors.primaryColor, fontSize: 16),
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.darkBlue,
                          size: 25,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
