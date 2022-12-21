# Cocktail Cookbook project

Cocktail project created in Flutter using Provider.

## Getting Started

This repository contains a full project using the cocktail API to display views such as login, home, cocktail single page and a drawer.

## How to Use
**Step 1:**

Download or clone this repo by using the link below:
```
https://github.com/Rodrigo190119/cocktail_challenge.git
```

**Step 2:**

Go to project root and execute the following command in terminal to get the required dependencies:
```
flutter pub get 
```

**Step 3:**

Finally, execute the following command in terminal to run the project:
```
flutter run 
```

**Reminder:**

This project was made with Flutter version 3.3.2 and Dart version 2.18.1, to run this project you will need at least the specified versions.

## Features

* Login
* Home
* Theme
* Http
* Image picker
* Provider (State Management)
* Shared Preferences

### Libraries & Tools Used

* [Font Awesome Icons](https://pub.dev/packages/font_awesome_flutter)
* [Google Fonts](https://pub.dev/packages/google_fonts)
* [Http](https://pub.dev/packages/http)
* [Image Picker](https://pub.dev/packages/image_picker)
* [Provider](https://pub.dev/packages/provider) (State Management)
* [Shared Preferences](https://pub.dev/packages/shared_preferences)

### Folder Structure
Here is the core folder structure which flutter provides by default.
```
flutter-app/
|- android
|- build
|- ios
|- lib
```

Here is the main folder structure used in this project
```
lib/
|- data/
|- ui/
|- utils/
|- main.dart
```

```
1- data - Contains the data layer of the project, includes directories for models, repository, services and presenter.
2- ui — Contains all the ui of the project, contains sub directory for each view.
3- util — Contains the utilities/common functions of the application.
4- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```
