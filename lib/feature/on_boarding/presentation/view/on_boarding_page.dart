import 'package:dalel_app/core/utils/extensions/extensions.dart';
import 'package:dalel_app/feature/on_boarding/presentation/widget/btn_widget.dart';
import 'package:dalel_app/feature/on_boarding/presentation/widget/page_view_widget.dart';
import 'package:dalel_app/feature/on_boarding/presentation/widget/skip_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final _pageViewController = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.h * 0.016,
            vertical: context.h * 0.040,
          ),
          child: Column(
            children: [
              SkipWidget(
                currentIndex: currentIndex,
                controller: _pageViewController,
              ),
              SizedBox(height: context.h * 0.032),
              PageViewWidget(
                controller: _pageViewController,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                currentIndex: currentIndex,
              ),
              BtnWidget(
                controller: _pageViewController,
                currentIndex: currentIndex,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
