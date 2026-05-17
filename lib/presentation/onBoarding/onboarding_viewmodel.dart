import 'dart:async';

import 'package:tut_app/domain/models.dart';
import 'package:tut_app/presentation/base/base_viewmodel.dart';
import 'package:tut_app/presentation/resources/assets_manager.dart';
import 'package:tut_app/presentation/resources/strings_manager.dart';

class OnboardingViewmodel extends BaseViewmodel
    implements OnboardingViewmodelInputs, OnboardingViewmodelOutputs {
  StreamController _streamController = StreamController<SliderViewObject>();
  int _currentIndex = 0;

  late final List<SliderObject> _list;
  //? onBoarding view Defualt values
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    _list = _getSliderData();
    _postDataToView();
  }

  //? onBoarding view inputs
  @override
  int goNext() {
    int nextIndex = ++_currentIndex;
    if (nextIndex == _list.length) {
      nextIndex = 0;
    }
    return nextIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = --_currentIndex;
    if (previousIndex == -1) {
      previousIndex = _list.length - 1;
    }
    return previousIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  //? onBoarding view outputs
  @override
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((SliderViewObject) => SliderViewObject);

  //* onBoarding private functions
  @override
  void _postDataToView() {
    inputSliderViewObject.add(
      SliderViewObject(_list[_currentIndex], _list.length, _currentIndex),
    );
  }

  //? this method will return a list of slider objects that will be used to show the data in the onBoarding screen and it will also make it a private method to be accessed only in this file and it will also make it a late final variable to be initialized only once and to be accessed only once
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
}

//? inputs means "Orders" that the view will send to the viewmodel
abstract class OnboardingViewmodelInputs {
  int goNext(); //! when user clicks on the right arrow
  int goPrevious(); //! when user clicks on the left arrow
  void onPageChanged(
    int index,
  ) {} //! when user changes the page by swiping or by clicking on the page indicators

  //? StremController input
  Sink get inputSliderViewObject;
}

//? outputs means "Data" that the viewmodel will send to the view
abstract class OnboardingViewmodelOutputs {
  //* StreamController output
  Stream<SliderViewObject> get outputSliderViewObject;
}

//? whats the StreamController :
// * StreamController is a class that allows us to create a stream and to add data to the stream and to listen to the stream and to get the data from the stream and to handle the stream in general. It is a way to manage the state of the app and to handle the communication between the view and the viewmodel in a reactive way.
//* Stream it is like a pipe and Sink it is like a tap and StreamController is like a water tank that holds the water and allows us to add water to the tank and to get water from the tank and to listen to the changes in the water level in the tank and to handle the water in general. It is a way to manage the state of the app and to handle the communication between the view and the viewmodel in a reactive way.
//? why we use StreamController in the viewmodel :
// 1. To manage the state of the app and to handle the communication between the view and the viewmodel.
// 3. To allow the viewmodel to add data to the stream and to notify the view about the changes in the state of the app.
// 4. To allow the viewmodel to handle the business logic of the app.
// 5. To allow the viewmodel to handle the navigation logic of the app and to navigate to the next page or to the previous page or to any page in general.
//? how to use StreamController in the viewmodel :
// 1. Create a StreamController instance in the viewmodel.
// 2. Add data to the stream using the add method of the StreamController instance.
// 3. Listen to the stream using the stream property of the StreamController instance and using the listen method of the stream to get the data from the stream and to handle the data in the view.
// 4. Dispose the StreamController instance in the dispose method of the viewmodel to free up the resources used by the StreamController and to prevent memory leaks.
//? how to use StreamController in the view :
// 1. Listen to the stream using the stream property of the StreamController instance and using the StreamBuilder widget to build the UI based on the data from the stream and to handle the data in the view.
// 2. Use the data from the stream to show the data in the UI and to handle the navigation logic of the app and to navigate to the next page or to the previous page or to any page in general based on the data from the stream.
