#!/usr/bin/env bash
set -euo pipefail
if ! command -v flutter >/dev/null 2>&1; then
  echo "Flutter is not installed or is not on PATH."
  echo "Install Flutter: https://docs.flutter.dev/get-started/install"
  exit 1
fi
flutter create . --platforms=android
flutter pub get
flutter build apk --release
echo "APK output: build/app/outputs/flutter-apk/app-release.apk"
