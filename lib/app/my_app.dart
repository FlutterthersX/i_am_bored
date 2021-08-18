import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/navigation/app_pages.dart';
import 'presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return GetMaterialApp(   
       debugShowCheckedModeBanner: false,
      title: 'I am bored',
      getPages: AppPages.pages,
      initialRoute: HomePage.routeName,
      
    );
  }
}
