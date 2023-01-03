import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{
  int i =0;

  void plus()
  {
    i++;
    notifyListeners();
  }
 void minus()
  {
    i--;
    notifyListeners();
  }
}