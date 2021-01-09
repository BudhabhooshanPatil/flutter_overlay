import 'package:flutter/material.dart';

class Loader {
  static final Loader appLoader = Loader();
  ValueNotifier<bool> loaderShowingNotifier = ValueNotifier(false);
    ValueNotifier<String> loaderTextNotifier = ValueNotifier('error message');

  void showLoader() {
    loaderShowingNotifier.value = true;
  }
  void hideLoader() {
    loaderShowingNotifier.value = false;
  }

  void setText() {
    loaderTextNotifier.value = 'another error message';
  }
  void setImage() {}
}
