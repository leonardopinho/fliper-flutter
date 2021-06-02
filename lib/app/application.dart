import 'package:fliper/app/utils/themes.dart';
import 'package:fliper/config/constants.dart';
import 'package:fliper/providers/wealth_summary_provider.dart';
import 'package:fliper/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class Application {
  static material() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WealthSummaryProvider()),
      ],
      child: MaterialApp(
        title: Constants.appName,
        debugShowCheckedModeBanner: false,
        theme: Themes.lightTheme,
        initialRoute: "/",
        home: Splash(),
      ),
      // postMock: PostMock(),
    );
  }
}
