# Start Learning Clean Architecture 🚀

**Flutter Clean Architecture Learning Journey | Step by Step**

I'm sharing my personal journey learning Clean Architecture with Flutter. Every commit is a real step in my learning path.

---

## ✨ What I Built So Far

- Clean Architecture layers (Presentation, Domain, Data)
- Professional resource management (Colors, Fonts, Themes, Strings, Assets...)
- MVVM Architecture for OnBoarding Screen
- Mock API with WireMock
- Dio + Retrofit setup with code generation
- BaseResponse + multiple typed response models

---

## 📸 Screenshots

<p align="center">
  <img src="./Screenshot From 2026-05-12 22-07-32.png" width="45%" />
  <img src="./Screenshot From 2026-05-13 02-33-35.png" width="45%" />
</p>

---

## 📽️ Videos

<p align="center">
  <video src="https://github.com/user-attachments/assets/1fa24f3a-fb51-47b4-9553-4cf833124ead" width="80%" controls></video>
</p>

---

## 📋 Commits Order (Step by Step)

1. Project setup + clean main.dart
2. Create layers folders (presentation, domain, data, app)
3. Create Application class + Singleton Pattern
4-14. Add Resource Managers (Color, Font, Style, Theme, Route, String, Asset, Constants...)
15. OnBoarding Assets & Strings
16. OnBoarding Screen (first implementation)
17. OnBoarding Screen Refactoring with MVVM
18. Add Dio + Retrofit + json_serializable packages
19. Create BaseResponse class + specific response models
20. Code generation for JSON handling (build_runner)

---

## ✅ Concepts Learned

- ✅ Clean Architecture Structure
- ✅ Singleton Pattern
- ✅ MVVM Architecture
- ✅ Resource Management
- ✅ Route Management with RouteGenerator
- ✅ Mock API with WireMock
- ✅ Dio + Retrofit + Code Generation
- ✅ JSON Serialization (json_serializable)

---

## 📁 Project Structure

```bash
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
│   │   ├──view
│   │   ├  └──on_boarding_view.dart
│   │   └──viewModel
│   │      └──on_boarding_viewmodel.dart
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
│    └──models.dart
└── data/
    ├──response.dart
    └──response.g.dart
```
