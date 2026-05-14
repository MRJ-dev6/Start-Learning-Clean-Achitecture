//* onBoarding Models
class SliderObject {
  //? this class will be used to hold the data for each page in the onBoarding screen and it will also be used to show the data in the onBoarding screen and it will also be used to show the navigation buttons and the page indicators for each page in the onBoarding screen and it will also be used to show the skip button to skip the onBoarding screen and to go to the login screen directly.
  String? title;
  String? subTitle;
  String? image;

  SliderObject(this.title, this.subTitle, this.image);
}

//* 1.we moved the SliderObject class to the models file because it is a model class and it will be used in the viewmodel and it will also be used in the view and app layers

class SliderViewObject{
  SliderObject sliderObject;
  int numberOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numberOfSlides, this.currentIndex);
}
//* 2.we created a new class called SliderViewObject to hold the data for the view