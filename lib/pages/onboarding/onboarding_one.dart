import 'dart:async';

import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:bankpick_mobile_app/utlis/onboarding.data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
  static final controller = PageController();
  late Timer _timer;

  static final data = List.generate(pages.length, (index) {
    final data = pages[index];
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Image.asset(
        data['image'],
      ),
    );
  });
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _autoSlide();
  }

  void _autoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (controller.hasClients) {
        setState(() {
          pageIndex = controller.page!.round();
        });
        int nextPage = pageIndex + 1;
        if (nextPage == data.length) nextPage = 0;
        controller.animateToPage(nextPage,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 20, top: 30, left: 20, bottom: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                  height: 300,
                  child: PageView.builder(
                      controller: controller,
                      itemCount: pages.length,
                      itemBuilder: (_, index) => data[index])),
              SizedBox(height: 35),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  onDotClicked: (index) {
                    controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  count: data.length,
                  effect: ExpandingDotsEffect(
                      dotHeight: 8,
                      dotColor: AppColors.grey,
                      dotWidth: 12,
                      activeDotColor: AppColors.primary),
                ),
              ),
              SizedBox(height: 35),
              Text(pages[pageIndex]['title'],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge),
              SizedBox(height: 18),
              Text(
                pages[pageIndex]['subtitle'],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Spacer(),
              SizedBox(
                  height: 53,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13)),
                          backgroundColor: AppColors.primary),
                      onPressed: () {
                        context.push('/signup');
                      },
                      child: Text(
                        'Next',
                        style: Theme.of(context).textTheme.bodySmall,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
