import 'package:cocktail_challenge/data/presenter/home_presenter.dart';
import 'package:cocktail_challenge/ui/views/home/widgets/cocktails_list.dart';
import 'package:cocktail_challenge/ui/views/home/widgets/home_banner.dart';
import 'package:cocktail_challenge/ui/views/home/widgets/home_drawer.dart';
import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/strings_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  late Future _future;

  @override
  void initState() {
    _future = context.read<HomePresenter>().getAllCocktails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomePresenter>(
      builder: (__, _, ___) {
        return Scaffold(
          key: _.scaffoldKey,
          drawerEnableOpenDragGesture: false,
          drawer: const HomeDrawer(),
          body: FutureBuilder(
            future: _future,
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.done) {
                return SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      HomeBanner(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 36.0
                        ),
                        child: Text(
                          StringsUtil.lastCocktailsText,
                          style: TextStyle(
                            color: ColorsUtil.textColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      CocktailsList()
                    ],
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator());
            }
          ),
        );
      }
    );
  }
}
