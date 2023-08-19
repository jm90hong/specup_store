import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:specup_store/model/store_model.dart';
import 'package:specup_store/screen/store_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StoreModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange
        ),
        home: StoreListScreen(),
      ),
    );
  }
}
