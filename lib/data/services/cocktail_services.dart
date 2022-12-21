import 'package:cocktail_challenge/utils/url_util.dart';
import 'package:http/http.dart' as http;

class CocktailServices {

  Future<http.Response> getCocktailById({required String cocktailId}) async {
    String uri = '${UrlUtil.baseUrl}/lookup.php?i=$cocktailId';
    final response = await http.get(Uri.parse(uri));
    return response;
  }

}