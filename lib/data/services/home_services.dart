import 'package:cocktail_challenge/utils/url_util.dart';
import 'package:http/http.dart' as http;

class HomeServices {

  Future<http.Response> getAllCocktails() async {
    String uri = '${UrlUtil.baseUrl}/randomselection.php';
    final response = await http.get(Uri.parse(uri));
    return response;
  }

}