import 'package:cocktail_challenge/ui/views/home/home_view.dart';
import 'package:cocktail_challenge/utils/app_constants.dart';
import 'package:cocktail_challenge/utils/preferences_util.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class LoginPresenter extends ChangeNotifier {

  final ImagePicker _imagePicker = ImagePicker();
  final formKey = GlobalKey<FormState>();

  TextEditingController firstNameTextEditingController = TextEditingController();
  TextEditingController lastNameTextEditingController = TextEditingController();
  XFile? userAvatar;

  void pickUserAvatar() async {
    userAvatar = await _imagePicker.pickImage(source: ImageSource.gallery);
    notifyListeners();
  }

  void validateForm(BuildContext context) {
    if(formKey.currentState!.validate()) {
      saveUserData();
      navigateToHome(context);
    }
  }

  Future<void> saveUserData() async {
    await Prefs.setString(AppConstants.userFirstName, firstNameTextEditingController.text);
    await Prefs.setString(AppConstants.userLastName, lastNameTextEditingController.text);
    if(userAvatar != null) await Prefs.setString(AppConstants.userAvatar, userAvatar!.path);
    String userFirstName = Prefs.getString(AppConstants.userFirstName);
    String userLastName = Prefs.getString(AppConstants.userLastName);
    String userAvatarPath = Prefs.getString(AppConstants.userAvatar);
    debugPrint('Welcome: $userFirstName $userLastName');
    if(userAvatar != null) debugPrint('Avatar path: $userAvatarPath');
  }

  void navigateToHome(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeView()),
        (Route<dynamic> route) => false);
  }
}