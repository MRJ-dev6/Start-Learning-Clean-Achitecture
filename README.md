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
- Extension Functions (`NonNullString` & `NonNullInteger`)
- Login models in Domain Layer
- `AppServiceClient` using Retrofit + Dio
- Organized Data Layer (network + response folders)
- Started implementing the Login request
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
<p>
1. Project setup + clean main.dart <br>
2. Create layers folders (presentation, domain, data, app) <br>
3. Create Application class + Singleton Pattern <br>
4-14. Add Resource Managers (Color, Font, Style, Theme, Route, String, Asset, Constants...) <br>
15. OnBoarding Assets & Strings <br>
16. OnBoarding Screen (first implementation) <br>
17. OnBoarding Screen Refactoring with MVVM <br>
18. Add Dio + Retrofit + json_serializable packages <br>
19. Create BaseResponse class + specific response models <br>
20. Code generation for JSON handling (build_runner) <br>
21. Add the API client class using the retrofit package <br>
22. Create login models to represent the data structure of the response <br>
23. Create extensions functions <br>
24. Create mapper extensions  <br>
25. Start implementing the login request <br>
26. Create the remote data source class and remote data source implementation class <br>
27. Add the network info class and network info implementation class<br>
28. Create repository implementation class<br>
29. Add error handler class <br>
30. continue implementing the error handler class <br>
31. Enhance error handling by adding a new error type and updating repository implementation for structured error management <br>
32. Implement Dio factory class for structured API calls and enhance error handling <br>
33. Add pretty dio logger for enhanced API request/response logging and update dependencies <br>
34. Add timeout duration and token constant; implement language manager for structured language handling <br>
35. Add app preferences class for managing shared preferences and language settings; update constants and dependencies <br>
36. Refactor DioFactory to utilize AppPreferences for dynamic language handling and clean up timeout settings<br>
37. Add BaseUsecase abstract class for use case implementation <br>
38. Add LoginUsecase implementation for user authentication
</p>

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
- ✅ extensions functions
- ✅ Mapping
- ✅ Either
- ✅ Remote Data Source
- ✅ Error Handler
- ✅ UseCase

---

## 📁 Project Structure

```bash
lib/
├── app/
│   ├── app.dart
│   ├──constants.dart
│   ├──app_prefs.dart
│   └── extensions.dart
├── presentation/
│   ├── forgotPassword/
│   │   └──forgot_password.dart
│   ├── login/
│   │    └──login_view.dart
│   ├── main/
│   │    └──main_view.dart
│   ├── onBoarding/
│   │   ├──view/
│   │   ├  └──on_boarding_view.dart
│   │   └──viewModel/
│   │      └──on_boarding_viewmodel.dart
│   ├── register/
│   │    └──register_view.dart
│   ├── resource/
│   │     ├──assets_manager.dart
│   │     ├──color_manager.dart
│   │     ├──constants_manager.dart
│   │     ├──language_manager.dart
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
│    ├──models/
│    │  └──models.dart
│    ├──repository/
│    │   └──repository.dart   
│    └──usecase/
│       ├──base_usecase.dart
│       └──login_usecase.dart
└── data/
    ├──network/
    │  ├──app_api.dart
    │  ├──app_api.g.dart
    │  ├──dio_factory.dart
    │  ├──failure.dart
    │  ├──error_handler.dart
    │  ├──network_info.dart
    │  └──requests.dart
    ├─response/
    │  ├──response.dart
    │  └──response.g.dart
    ├──mapper/
    │   └──mapper.dart
    ├──data_source/
    │   └──remote_data_source.dart
    └──repository/
       └──repository_impl.dart 
```
