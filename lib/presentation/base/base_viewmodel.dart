abstract class BaseViewmodel implements BaseViewmodelInputs , BaseViewmodelOutputs{
  // shared variables and methods for all viewmodels can be defined here
}

abstract class BaseViewmodelInputs{
  // shared inputs for all viewmodels can be defined here
  void start(); //? this method will be called when the viewmodel is initialized and we can use it to start any initializations or to fetch any data that we need to show in the view.

  void dispose(); //? this method will be called when the viewmodel is disposed and we can use it to dispose any resources that we have in the viewmodel to avoid memory leaks and to prevent any issues that may occur when the viewmodel is disposed.
}

abstract class BaseViewmodelOutputs{
  // shared outputs for all viewmodels can be defined here
  //! will be implemented later
}