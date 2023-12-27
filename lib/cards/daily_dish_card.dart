import 'package:flutter/material.dart';
import 'package:glass_login/utils/app_colors.dart';

class DailyDish extends StatelessWidget {
  const DailyDish({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 180,
        height: 170,
        child: Card(
          color: AppColors.primaryHighContrast,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(2, 8, 2, 0),
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 90,
                          width: 155,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Image(
                            image: NetworkImage(
                              'https://picsum.photos/seed/picsum/200/300',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'data',
                          style: TextStyle(
                              color: AppColors.darkBlue, fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Text(
                  'Name of the kitchen',
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                  children: [
                    Text(
                      '11:00',
                      style:
                          TextStyle(color: AppColors.whiteColor, fontSize: 12),
                    ),
                    Text(
                      ' to ',
                      style:
                          TextStyle(color: AppColors.whiteColor, fontSize: 12),
                    ),
                    Text(
                      '01:30',
                      style:
                          TextStyle(color: AppColors.whiteColor, fontSize: 12),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Text(
                  '2 JOD',
                  style: TextStyle(color: AppColors.darkBlue, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
