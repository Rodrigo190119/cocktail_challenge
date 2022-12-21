import 'package:cocktail_challenge/data/presenter/cocktail_presenter.dart';
import 'package:cocktail_challenge/ui/views/cocktail/widgets/cocktail_banner.dart';
import 'package:cocktail_challenge/ui/views/cocktail/widgets/cocktail_body.dart';
import 'package:cocktail_challenge/ui/views/cocktail/widgets/cocktail_bottom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CocktailView extends StatefulWidget {
  final String cocktailId;
  const CocktailView({required this.cocktailId, Key? key}) : super(key: key);

  @override
  State<CocktailView> createState() => _CocktailViewState();
}

class _CocktailViewState extends State<CocktailView> {

  late Future _future;

  @override
  void initState() {
    _future = context.read<CocktailPresenter>().getCocktailById(cocktailId: widget.cocktailId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {
            return SafeArea(
              child: Column(
                children: const [
                  CocktailBanner(),
                  CocktailBody(),
                  CocktailBottomButtons()
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
