import 'package:cocktail_challenge/data/models/entities/cocktail_entity.dart';
import 'package:cocktail_challenge/data/presenter/home_presenter.dart';
import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/images_path_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CocktailCard extends StatelessWidget {
  final Cocktail cocktail;
  const CocktailCard({required this.cocktail, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<HomePresenter>(
        builder: (__, _, ___) {
          return GestureDetector(
            onTap: _.navigateToCocktail(context, cocktailId: cocktail.id!),
            child: Container(
              width: size.width * 0.775,
              height: size.height * 0.387,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.only(
                  bottom: 15.0, left: 36.0, right: 36.0
              ),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: ColorsUtil.brick
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: FadeInImage.assetNetwork(
                      placeholder: ImagesPathUtil.loadingImage,
                      fit: BoxFit.contain,
                      image: cocktail.image ?? '',
                      height: size.height * 0.250,
                      imageErrorBuilder: (_, __, ___) {
                        return Image.asset(ImagesPathUtil.errorImage);
                      },
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    cocktail.name ?? '',
                    style: const TextStyle(
                      color: ColorsUtil.textColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 7.0),
                  Text(
                    cocktail.instructions ?? '',
                    style: const TextStyle(
                      color: ColorsUtil.textColor,
                      fontSize: 11.0,
                      fontWeight: FontWeight.w300
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}
