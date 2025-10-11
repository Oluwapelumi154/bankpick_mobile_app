import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class DebitCardWidget extends StatelessWidget {
  const DebitCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.none,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 20),
        height: 235,
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 0.5,
                  color: AppColors.darkBackground,
                  offset: Offset(-1, 1))
            ],
            color: Color(0XFF2A2C3C).withValues(alpha: 0.65),
            // color: AppColors.darkBackground.withValues(alpha: 0.65),
            border: Border.all(color: Color(0XFF707070), width: 0.2),
            image: DecorationImage(
                image: AssetImage('assets/images/world_map.png')),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(30)),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
                top: 10,
                left: 0,
                child: Image.asset(
                  'assets/images/chips.png',
                  height: 45,
                  width: 45,
                )),
            // Positioned(
            //   top: 10,
            //   right: 0,
            //   child: Text('Hello'),
            // ),
            Positioned(
                right: -100,
                bottom: -215,
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.asset(
                    'assets/images/ellipse-one.png',
                  ),
                )),
            Positioned(
                top: 65,
                child: Text(
                  '4562 1122 4595 7852',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 26, color: AppColors.white),
                )),
            Positioned(
                bottom: 75,
                child: Text(
                  'AR Jonson',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white),
                )),
            Positioned(
                bottom: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Expiry Date'),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '24/20000',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(
                              fontSize: 17,
                              color: AppColors.white,
                              fontWeight: FontWeight.w500),
                    )
                  ],
                )),
            Positioned(
                bottom: 15,
                left: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cvv'),
                    SizedBox(
                      height: 2.5,
                    ),
                    Text('698',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                                fontSize: 17,
                                color: AppColors.white,
                                fontWeight: FontWeight.w500))
                  ],
                )),
            Positioned(
                bottom: 15,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/mc_dark_logo.png',
                      height: 50,
                    ),
                    Text('MasterCard',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white))
                  ],
                ))
          ],
        ));
  }
}
