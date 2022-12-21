import 'package:cocktail_challenge/data/presenter/cocktail_presenter.dart';
import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/strings_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CocktailBottomButtons extends StatelessWidget {
  const CocktailBottomButtons({Key? key}) : super(key: key);

  Widget _likeButton(BuildContext context, CocktailPresenter _) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: _.changeFavoriteStatus,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: Size(
          size.width * 0.206,
          size.height * 0.058
        ),
        backgroundColor: ColorsUtil.likeCardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40), // <-- Radius
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _.selectedCocktailLikes.toString(),
            style: const TextStyle(
              color: ColorsUtil.textColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w400
            ),
          ),
          const SizedBox(width: 7),
          Visibility(
            visible: _.isFavorite,
            replacement: const Icon(
              Icons.favorite_border,
              color: ColorsUtil.textColor,
            ),
            child: const Icon(
              Icons.favorite,
              color: ColorsUtil.mainColor,
            ),
          )
        ],
      ),
    );
  }

  Widget _reserveButton(BuildContext context, CocktailPresenter _) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: (){
        _.showComingSoonDialog(context: context);
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: Size(
          size.width * 0.543,
          size.height * 0.058
        ),
        backgroundColor: ColorsUtil.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40), // <-- Radius
        ),
      ),
      child: const Text(
        StringsUtil.shareText,
        style: TextStyle(
          color: ColorsUtil.buttonTextColor,
          fontSize: 14.0,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<CocktailPresenter>(
        builder: (__, _, ___) {
          return Container(
            height: size.height * 0.116,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)
              ),
              color: ColorsUtil.brick
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _likeButton(context, _),
                  const SizedBox(width: 8.0),
                  _reserveButton(context, _)
                ],
              ),
            ),
          );
        }
    );
  }
}
