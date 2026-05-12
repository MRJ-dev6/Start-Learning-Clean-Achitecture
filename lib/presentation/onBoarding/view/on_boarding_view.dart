import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tut_app/presentation/resources/assets_manager.dart';
import 'package:tut_app/presentation/resources/color_manager.dart';
import 'package:tut_app/presentation/resources/routes_manager.dart';
import 'package:tut_app/presentation/resources/strings_manager.dart';
import 'package:tut_app/presentation/resources/values_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0)
      ..addListener(_pageControllerListener);
  }

  void _pageControllerListener() {
    final page = _pageController.page;
    if (page == null) return;
    final index = page.round();
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  void dispose() {
    _pageController.removeListener(_pageControllerListener);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager
              .white, // ? this will set the status bar color to white and it will also set the status bar icons color to dark to be visible on the white background and we can use it to set the status bar color to any color that we want and to set the status bar icons color to any color that we want to be visible on the status bar color that we have set.
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: ColorManager.white,
        elevation: 0,
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        // keep onPageChanged for explicit page change events
        onPageChanged: (index) {
          if (index != _currentIndex) {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        itemBuilder: (context, index) => OnBoardingPage(_list[index]),
      ),
      bottomSheet: Container(
        color: ColorManager.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                _pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              style: ButtonStyle(
                elevation: WidgetStateProperty.all(AppSize.s0),
              ),
              child: SvgPicture.asset(
                ImagesAssets.onBoardingLeftArrowIc,
                height: AppSize.s20,
              ),
            ),
            Row(
              children: List.generate(
                _list.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  child: SvgPicture.asset(
                    index == _currentIndex
                        ? ImagesAssets.onBoardingHollowCircleIc
                        : ImagesAssets.onBoardingSolidCircleIc,
                    height: AppSize.s12,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              style: ButtonStyle(
                elevation: WidgetStateProperty.all(AppSize.s0),
              ),
              child: SvgPicture.asset(
                ImagesAssets.onBoardingRightArrowIc,
                height: AppSize.s20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

late final List<SliderObject> _list = _getSliderData();
List<SliderObject> _getSliderData() => [
  SliderObject(
    AppStrings.onBoardingTitle1,
    AppStrings.onBoardingSubTitle1,
    ImagesAssets.onBoardingLogo1,
  ),
  SliderObject(
    AppStrings.onBoardingTitle2,
    AppStrings.onBoardingSubTitle2,
    ImagesAssets.onBoardingLogo2,
  ),
  SliderObject(
    AppStrings.onBoardingTitle3,
    AppStrings.onBoardingSubTitle3,
    ImagesAssets.onBoardingLogo3,
  ),
  SliderObject(
    AppStrings.onBoardingTitle4,
    AppStrings.onBoardingSubTitle4,
    ImagesAssets.onBoardingLogo4,
  ),
];

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(this.sliderObject, {super.key});
  final SliderObject sliderObject;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Text(
          sliderObject.title!,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: AppSize.s20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
          child: Text(
            sliderObject.subTitle!,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: AppSize.s40),
        SizedBox(
          height: AppSize.s270,
          child: SvgPicture.asset(sliderObject.image!),
        ),
        SizedBox(height: AppSize.s50),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    RoutesManager.loginRoute,
                  );
                },
                child: Text(
                  AppStrings.skip,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SliderObject {
  String? title;
  String? subTitle;
  String? image;

  SliderObject(this.title, this.subTitle, this.image);
}

//* OnBoarding screen is the screen that will be shown to the user when he opens the app for the first time and it will show him some information about the app and it will help him to understand how to use the app and what are the features of the app and it will also help him to understand how to navigate through the app and how to use the app in general.
//! this is the onBoarding screen of the app and we can use it to show some information about the app and to help the user to understand how to use the app and what are the features of the app and it will also help him to understand how to navigate through the app and how to use the app in general.
//* ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//? what is the MVVM architecture and how to implement it in the onBoarding screen?
//? MVVM stands for Model-View-ViewModel and it is a software architectural pattern that is used to separate the presentation layer from the business logic layer and it is used to make the
//? code more maintainable and testable and it is also used to make the code more reusable and it is also used to make the code more scalable and it is also used to make the code more flexible and it is also used to make the code more modular and it is also used to make the code more organized and it is also used to make the code more readable and it is also used to make the code more understandable and it is also used to make the code more maintainable and it is also used to make the code more testable and it is also used to make the code more reusable and it is also used to make the code more scalable and it is also used to make the code more flexible and it is also used to make the code more modular and it is also used to make the code more organized and it is also used to make the code more readable and it is also used to make the code more understandable.
//? MVVM architecture consists of three main components :
//1. Model : it is the data layer of the app and it is responsible for fetching the data from the server and it is also responsible for storing the data in the local database and it is also responsible for providing the data to the view model and it is also responsible for providing the data to the view and it is also responsible for providing the data to the view and it is also responsible
//2. View : it is the presentation layer of the app and it is responsible for showing the data to the user and it is also responsible for handling the user interactions and it is also responsible for providing the data to the view model and it is also responsible for providing the data to the model and it is also responsible for providing the data to the model and it is also responsible for providing the data to the model.
//3. ViewModel : it is the business logic layer of the app and it is responsible for handling the business logic of the app and it is also responsible for providing the data to the view
// and it is also responsible for providing the data to the model and it is also responsible for providing the data to the model and it is also responsible for providing the data to the model and it is also responsible for providing the data to the view and it is also responsible for providing the data to the view and it is also responsible for providing the data to the view.
//* ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//? how to implement the MVVM architecture in the onBoarding screen?
//1. Create a model class for the onBoarding screen and it will contain the data that we want to show to the user in the onBoarding screen and it will also contain the data that we want to show to the user in the onBoarding screen and it will also contain
//2. Create a view model class for the onBoarding screen and it will contain the business logic for the onBoarding screen and it will also contain the data that we want to show to the user in the onBoarding screen and it will also contain the data that we want to show to the user in the onBoarding screen and it will also contain 
//3. Create a view class for the onBoarding screen and it will contain the UI elements for the onBoarding screen and it will also contain the data that we want to show to the user in the onBoarding screen and it will also contain the data that we want to show to the user in the onBoarding screen and it will also contain
//4. Connect the view model to the view and it will also contain the data that we want to show to the user in the onBoarding screen and it will also contain the data that we want to show to the user in the onBoarding screen and it will also contain
//* -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//? Benefit of using the MVVM architecture in the onBoarding screen :
//1. It helps to separate the presentation layer from the business logic layer and it helps to make the code more maintainable and testable and it helps to make the code more reusable and it
//2. It helps to make the code more scalable and it helps to make the code more flexible and it helps to make the code more modular and it helps to make the code more organized and it helps to make the code more readable and it helps to make the code more understandable and it helps to make the code more maintainable and it helps to make the code more testable and it helps to make the code more reusable and it helps to make the code more scalable and it helps to make the code more flexible and it helps to make the code more modular and it helps to make the code more organized and it helps to make the code more readable and it helps to make the code more understandable.
//3. It helps to make the code more maintainable and it helps to make the code more testable and it helps to make the code more reusable and it helps to make the code more scalable and it helps to make the code more flexible and it helps to make the code more modular and it helps to make the code more organized and it helps to make the code more readable and it helps to make the code more understandable.
//4. It helps to make the code more reusable and it helps to make the code more scalable and it helps to make the code more flexible and it helps to make the code more modular and it helps to make the code more organized and it helps to make the code more readable and it helps to make the code more understandable.

//! note : i did it by the wrong way by putting the business logic in the view and i will refactor it later to put the business logic in the view model and to connect the view model to the view and to make the code more maintainable and testable and to make the code more reusable and to make the code more scalable and to make the code more flexible and to make the code more modular and to make the code more organized and to make the code more readable and to make the code more understandable.