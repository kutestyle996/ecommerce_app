import 'package:ecommerce_app/bottom_bar.dart';
import 'package:ecommerce_app/constants/theme_data.dart';
import 'package:ecommerce_app/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentTheme() async {
    themeChangeProvider.darkMode = await themeChangeProvider.prefs.getTheme() ?? false;
  }

  @override
  void initState() {
    getCurrentTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return themeChangeProvider;
        })
      ],
      child: Consumer<DarkThemeProvider>(builder: (context, themeData, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: Styles.themeData(themeChangeProvider.darkMode, context),
          home: BottomBarScreen(),
        );
      }),
    );
  }
}
