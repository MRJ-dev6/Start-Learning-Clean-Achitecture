# Start Learning Clean Architecture 🚀

I'm sharing my learning journey in Clean Architecture with Flutter.
Every commit represents a step in my learning path.

## Commits Order (Step by Step)
1. **first commit** — create a new Flutter project and clean the main.dart file
2. **creating layers folders** — presentation, domain, data, and app
3. **creating application class** — implementing the Singleton pattern in the app layer
4. **add ColorManager** — managing app colors in the presentation layer
5. **update project structure** — add Montserrat font assets with FontManager class
6. **add ValueManager** — managing app values in the presentation layer
7. **add StyleManager** — managing app styles in the presentation layer
8. **add ThemeManager** —  managing app themes in the presentation layer
9. **add RouteManager** — managing app routes in the presentation layer
10. **add RouteGenerator** — It allows us to handle undefined routes in one place
11. **add StringManager** — managing app strings in the presentation layer
12. **add assets to the pubspec.yaml** — manage images and other assets in the app.
13. **add AssetManager** — managing app assets in the presentation layer
14. **add ConstantsManager** — managing app constants in the presentation layer
## Concepts Learned So Far
- ✅ Clean Architecture layers structure
- ✅ Singleton Design Pattern
- ✅ Color Management (avoiding hardcoded colors)
- ✅ Font Management (FontConstants, FontWeights, FontSizes)
- ✅ Value Management (Margins, Paddings, Sizes)
- ✅ Style Management (LightStyle,RegularStyle, MediumStyle, SemiBoldStyle,BoldStyle)
- ✅ Route Management (SplashViewRoute,LoginViewRoute, RegisterViewRoute, OnBoaridngViewRoute,ForgotPasswordViewRoute, MainViewRoute, StoreDeatialsViewRoute)
- ✅ RouteGenerator (all routes in one place , handle undefined routes)
- ✅ String Management (centralize app strings)
- ✅ Asset Management (centralize asset paths)
- ✅ Creating timer object and delay feature
## Project Structure
```
lib/
├── app/
│   └── app.dart
├── presentation/
│   ├── forgotPassword/
│   │   └──forgot_password.dart
│   ├── login/
│   │    └──login_view.dart
│   ├── main/
│   │    └──main_view.dart
│   ├── onBoarding/
│   │     └──on_boarding_view.dart
│   ├── register/
│   │    └──register_view.dart
│   ├── resource/
│   │     ├──assets_manager.dart
│   │     ├──color_manager.dart
│   │     ├──constants_manager.dart
│   │     ├──font_manager.dart
│   │     ├──routes_manager.dart
│   │     ├──strings_manager.dart
│   │     ├──style_manager.dart
│   │     ├──theme_manager.dart
│   │     └──values_manager.dart
│   ├──splash/
│   │    └──splash_view.dart
│   └──storeDetails/
│      └──store_details_view.dart
├── domain/
└── data/
```
---
> "Every expert was once a beginner." 🌱
