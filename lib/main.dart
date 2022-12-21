import 'package:cocktail_challenge/data/presenter/cocktail_presenter.dart';
import 'package:cocktail_challenge/data/presenter/drawer_presenter.dart';
import 'package:cocktail_challenge/data/presenter/home_presenter.dart';
import 'package:cocktail_challenge/data/presenter/login_presenter.dart';
import 'package:cocktail_challenge/ui/views/login/login_view.dart';
import 'package:cocktail_challenge/utils/preferences_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginPresenter()),
        ChangeNotifierProvider(create: (_) => HomePresenter()),
        ChangeNotifierProvider(create: (_) => CocktailPresenter()),
        ChangeNotifierProvider(create: (_) => DrawerPresenter()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fulltimeforce Challenge',
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily
        ),
        home: const LoginView(),
      ),
    );
  }
}
