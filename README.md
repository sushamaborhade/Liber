 <p align="center">
  <a href="#"><img src="https://capsule-render.vercel.app/api?type=rect&color=210089&height=100&section=header&text=Liber&fontSize=50%&fontColor=ffffff%22%20alt=%22website%20title%20image" alt="website title image"></a>
  <h2 align="center"> 📚 A cross-platform app for online books 📚</h2>
</p>

![GitHub pull requests](https://img.shields.io/github/issues-pr/sushamaborhade/Liber) ![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed/sushamaborhade/Liber) ![GitHub last commit](https://img.shields.io/github/last-commit/sushamaborhade/Liber)  ![GitHub issues](https://img.shields.io/github/issues-raw/sushamaborhade/Liber) [![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.png?v=103)](https://github.com/sushamaborhade) [![MIT Licence](https://img.shields.io/github/license/sushamaborhade/Liber.svg?v=103)](https://opensource.org/licenses/BSD-3-Clause)

# Online Book App

A simple Flutter Book app. Books are free to download and is the best place to start reading them online. Books will be listed with a brief description and have an astonishing view for books to be viewed by user.

# How to Use 

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

### Screenshots

   Main Page               |      LogIn Page           |       SignUp Page
:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/utkarsh0702/Liber/blob/main/screenshots/reg_page.png)|![](https://github.com/utkarsh0702/Liber/blob/main/screenshots/login.png) |![](https://github.com/utkarsh0702/Liber/blob/main/screenshots/signup.png)

   Confirmation Page       |       Home Page           |       Search Page
:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/utkarsh0702/Liber/blob/main/screenshots/confirmation.png)|![](https://github.com/utkarsh0702/Liber/blob/main/screenshots/home_page.png) |![](https://github.com/utkarsh0702/Liber/blob/main/screenshots/search_page.png)

   Category Page           |       Profile Page        |       License Page
:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/utkarsh0702/Liber/blob/main/screenshots/category_page.png)|![](https://github.com/utkarsh0702/Liber/blob/main/screenshots/profile_page.png) |![](https://github.com/utkarsh0702/Liber/blob/main/screenshots/license.png)

### Folder and File Structure
Here is the core structure of files in the app.

```
flutter-app/
|─── android
|─── build
|─── ios
|─── lib
|   │─── main.dart        
|   └─── screens/
|          │─── main screens/
|          |      │── Items/
|          |      |      └── search_item.dart
|          |      │── settings/
|          |      |      │── about.dart
|          |      |      └── downloads.dart
|          |      │── category_page.dart
|          |      │── home_page.dart
|          |      │── nav_bar.dart
|          |      │── profile_page.dart
|          |      └── search_page.dart
|          │── confirmation_page.dart
|          │── login.dart
|          │── registration.dart
|          │── signup.dart
|          └── splash_screen.dart
|─── test
|─── .gitignore
|─── LICENSE
└─── pubspec.yaml
```

## Want to Contribute, if you find any bug or want to upgrade a feature,
Follow these steps:
- Fork the project.
- Clone the repository to your local environment.

    `$ git clone https://github.com/sushamaborhade/Liber.git`
    
- Make new changes, commit the changes and upload that to your GitHub.

    `$ git add .`
    
    `$ git commit -m "Your detailed description of your changes."`
    
    `$ git push origin branch-name`
    
- Send a pull request to the project repo and make sure you have updated your repository and is not overriding the existing code on the project repository.
