import 'dart:async';

import 'package:tut_app/domain/models.dart';
import 'package:tut_app/presentation/base/base_viewmodel.dart';

class OnboardingViewmodel extends BaseViewmodel
    implements OnboardingViewmodelInputs, OnboardingViewmodelOutputs {
  
  StreamController _streamController = StreamController<SliderViewObject>();
  //? onBoarding view Defualt values
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }
  //? onBoarding view inputs
  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPageChanged(int index) {
    // TODO: implement onPageChanged
  }
  
  @override
  // TODO: implement inputSliderViewObject
  Sink<dynamic> get inputSliderViewObject => throw UnimplementedError();
  

  //? onBoarding view outputs
  @override
  // TODO: implement outputSliderViewObject
  Stream<dynamic> get outputSliderViewObject => throw UnimplementedError();
}

//? inputs means "Orders" that the view will send to the viewmodel
abstract class OnboardingViewmodelInputs {
  void goNext() {} //! when user clicks on the right arrow
  void goPrevious() {} //! when user clicks on the left arrow
  void onPageChanged(
    int index,
  ) {} //! when user changes the page by swiping or by clicking on the page indicators

  //? StremController input
  Sink get inputSliderViewObject;
}

//? outputs means "Data" that the viewmodel will send to the view
abstract class OnboardingViewmodelOutputs {
  //* StreamController output
  Stream get outputSliderViewObject;
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
