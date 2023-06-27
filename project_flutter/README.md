# project_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Command
- To build models, use this command

```
dart run build_runner build --delete-conflicting-outputs

``` 

- To generate font from svg icon (tất cả svg đều phải cùng chiều cao)

```
dart run icon_font_generator --from=assets/icons \
  --class-name=Icomoon \
  --out-font=assets/fonts/Icomoon/icomoon.ttf \
  --out-flutter=lib/icon/icons.dart
  
```
