import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(
        GetMaterialApp(
          home: const Scaffold(
            backgroundColor: Colors.white,
            body: HomeScreen(),
          ),
          theme: ThemeData(
            fontFamily: 'Pretendard',
            useMaterial3: false,
          ),
          debugShowCheckedModeBanner: false,
        ),
      );
    },
  );
}
