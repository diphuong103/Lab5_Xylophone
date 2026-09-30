# Lab 5 — Xylophone (Flutter)

The Flutter/Dart implementation for this lab is the app in this project.
`flutter_app/` contains its source, Android/Web runners, and bundled sounds.
The old Expo Magic 8 Ball files at the project root are retained as a separate
legacy exercise and are not the Lab 5 submission.

```bash
cd Lab5_Xylophone/flutter_app
flutter pub get
flutter run -d emulator-5554
```

The seven color-coded bars play bundled C-major note samples through
`audioplayers`, so playback does not depend on a network connection.
