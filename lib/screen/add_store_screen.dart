import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:specup_store/model/store_model.dart';
import 'package:specup_store/vo/store.dart';

class AddStoreScreen extends StatefulWidget {
  const AddStoreScreen({Key? key}) : super(key: key);

  @override
  State<AddStoreScreen> createState() => _AddStoreScreenState();
}

class _AddStoreScreenState extends State<AddStoreScreen> {


  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('식당 등록하기',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('식당명'),
            Container(
              width: 300,
              child: TextFormField(
                controller: nameController,
              ),
            ),
            SizedBox(height: 20,),
            Text('간단소개'),
            Container(
              width: 300,
              child: TextFormField(
                controller: descController,
              ),
            ),
            SizedBox(height: 20,),
            Text('지역(도시)'),
            Container(
              width: 300,
              child: TextFormField(
                controller: cityController,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 300,
              child: ElevatedButton(
                  onPressed: (){
                    Store newStore = Store(
                      name: nameController.text,
                      decription: descController.text,
                      city: cityController.text
                    );

                    Provider.of<StoreModel>(context,listen: false).add(store: newStore);
                    Navigator.pop(context);
                  },
                  child: Text('등록하기',style: TextStyle(fontWeight: FontWeight.bold),)
              ),
            )
          ],
        ),
      ),
    );
  }
}
