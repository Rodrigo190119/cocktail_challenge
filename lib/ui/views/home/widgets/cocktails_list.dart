import 'package:cocktail_challenge/data/models/entities/cocktail_entity.dart';
import 'package:cocktail_challenge/data/presenter/home_presenter.dart';
import 'package:cocktail_challenge/ui/views/home/widgets/cocktail_card.dart';
import 'package:cocktail_challenge/utils/strings_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CocktailsList extends StatefulWidget {
  const CocktailsList({Key? key}) : super(key: key);

  @override
  State<CocktailsList> createState() => _CocktailsListState();
}

class _CocktailsListState extends State<CocktailsList> {

  @override
  void initState() {
    context.read<HomePresenter>().initScrollController();
    super.initState();
  }

  @override
  void dispose() {
    context.read<HomePresenter>().disposeScrollController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomePresenter>(
        builder: (__, _, ___) {
          return Expanded(
            child: Visibility(
              visible: _.cocktailsList.isNotEmpty,
              replacement: const Center(child: Text(StringsUtil.emptyListText)),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: _.scrollController,
                  itemCount: _.cocktailsList.length + 1,
                  itemBuilder: (context, i) {
                    if (i < _.cocktailsList.length) {
                      Cocktail cocktail = _.cocktailsList[i];
                      return CocktailCard(cocktail: cocktail);
                    } else {
                      return Center(
                        child: Visibility(
                          visible: !_.incomingCocktailEmpty,
                          replacement: const Padding(
                            padding: EdgeInsets.only(bottom: 15.0),
                            child: Text(StringsUtil.incomingCocktailsEmptyText)
                          ),
                          child: const CircularProgressIndicator()
                        )
                      );
                    }
                  }
              ),
            ),
          );
        }
    );
  }
}
