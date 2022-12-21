import 'package:cocktail_challenge/utils/url_util.dart';
import 'package:http/http.dart' as http;

class DrawerServices {

  Future<http.Response> getRandomCocktail() async {
    String uri = '${UrlUtil.baseUrl}/random.php';
    final response = await http.get(Uri.parse(uri));
    return response;
  }

}