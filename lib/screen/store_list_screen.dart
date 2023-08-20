import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:specup_store/model/store_model.dart';
import 'package:specup_store/screen/add_store_screen.dart';

import '../vo/store.dart';

class StoreListScreen extends StatefulWidget {
  const StoreListScreen({Key? key}) : super(key: key);

  @override
  State<StoreListScreen> createState() => _StoreListScreenState();
}

class _StoreListScreenState extends State<StoreListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('식당 리스트',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Consumer<StoreModel>(builder: (context, storeModel, child){
          return SingleChildScrollView(
            child: Column(
                children: storeModel.stores.map((e) => buildStoreBox(store: e)).toList(),
              ),
          );
        },)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddStoreScreen()),);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


Widget buildStoreBox({required Store store}){
  return Container(

    padding: EdgeInsets.symmetric(horizontal: 16,),
    width: double.infinity,
    height: 80,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('[${store.city}]',style: TextStyle(color: Colors.deepOrange,fontSize: 16,fontWeight: FontWeight.bold),),
            SizedBox(width: 4,),
            Text(store.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
          ],
        ),
        SizedBox(height: 8,),
        Text(store.decription,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 14),),
      ],
    ),
  );
}

