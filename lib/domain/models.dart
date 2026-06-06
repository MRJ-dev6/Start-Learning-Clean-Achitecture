// ignore_for_file: public_member_api_docs, sort_constructors_first
//* onBoarding Models
class SliderObject {
  //? this class will be used to hold the data for each page in the onBoarding screen and it will also be used to show the data in the onBoarding screen and it will also be used to show the navigation buttons and the page indicators for each page in the onBoarding screen and it will also be used to show the skip button to skip the onBoarding screen and to go to the login screen directly.
  String? title;
  String? subTitle;
  String? image;

  SliderObject(this.title, this.subTitle, this.image);
}

//* 1.we moved the SliderObject class to the models file because it is a model class and it will be used in the viewmodel and it will also be used in the view and app layers

class SliderViewObject {
  SliderObject sliderObject;
  int numberOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numberOfSlides, this.currentIndex);
}
//* 2.we created a new class called SliderViewObject to hold the data for the view

//? login models

class Customer {
  //? this class represents the customer data structure in the response
  String id; //? this is the id of the customer
  String name; //? this is the name of the customer
  int
  numOfNotifications; //? this is the number of notifications for the customer
  Customer({
    required this.id,
    required this.name,
    required this.numOfNotifications,
  });
}

class Contact {
  //? this class represents the contact data structure in the response
  String number; //? this is the phone number of the customer
  String email; //? this is the email of the customer
  String link; //? this is the link to the customer's profile
  Contact({required this.number, required this.email, required this.link});
}

class Auth {
  //? this class represents the authentication data structure in the response
  Customer customer; //? this is the customer data for the authenticated user
  Contact contact; //? this is the contact data for the authenticated user
  Auth({required this.customer, required this.contact});
}

//* we created the above classes to represent the data structure of the response from the login API and to make it easier to convert the JSON data to Dart objects and to handle the data in a more structured way in the app.
