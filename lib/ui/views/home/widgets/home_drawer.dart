import 'package:cocktail_challenge/ui/views/home/widgets/home_drawer/drawer_header.dart';
import 'package:cocktail_challenge/ui/views/home/widgets/home_drawer/random_cocktail.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: const [
            HomeDrawerHeader(),
            RandomCocktailListTile(),
          ],
        ),
      ),
    );
  }
}
