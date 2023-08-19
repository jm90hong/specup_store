import 'package:flutter/material.dart';
import '../vo/store.dart';


class StoreModel extends ChangeNotifier{

  List<Store> stores=[];

  void add({required Store store}){
    stores.add(store);
    notifyListeners();
  }

}