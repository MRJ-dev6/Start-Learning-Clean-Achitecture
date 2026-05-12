import 'package:tut_app/presentation/base/base_viewmodel.dart';

class OnboardingViewmodel extends BaseViewmodel implements OnboardingViewmodelInputs, OnboardingViewmodelOutputs {
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }
  
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
}

//? inputs means "Orders" that the view will send to the viewmodel
class OnboardingViewmodelInputs {
  void goNext(){} //! when user clicks on the right arrow
  void goPrevious(){} //! when user clicks on the left arrow
  void onPageChanged(int index){}
}

class OnboardingViewmodelOutputs {}
