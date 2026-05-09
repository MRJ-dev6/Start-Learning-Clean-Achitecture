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
## Concepts Learned So Far
- ✅ Clean Architecture layers structure
- ✅ Singleton Design Pattern
- ✅ Color Management (avoiding hardcoded colors)
- ✅ Font Management (FontConstants, FontWeights, FontSizes)
- ✅ Value Management (Margins, Paddings, Sizes)
- ✅ Style Management (LightStyle,RegularStyle, MediumStyle, SemiBoldStyle,BoldStyle)
## Project Structure
```
lib/
├── app/
│   └── app.dart
├── presentation/
│   ├── color_manager.dart
│   ├── font_manager.dart
│   ├──values_manager.dart
│   ├──style_manager.dart
│   └──theme_manager.dart
├── domain/
└── data/
```
---
> "Every expert was once a beginner." 🌱
