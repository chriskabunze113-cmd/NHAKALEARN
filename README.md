# NhakaLearn v0.4 — Android build package

This package contains the NhakaLearn Flutter prototype and automated Android APK build options.

## Option 1: Build on a computer with Flutter installed

Requirements:
- Flutter SDK (stable channel)
- Android Studio with Android SDK and Android build tools
- A computer with internet access for the first dependency download

Steps:
1. Extract this ZIP.
2. Open the extracted `NhakaLearn_v04` folder in a terminal.
3. On Windows, run `build_apk.bat`.
   On macOS/Linux, run `bash build_apk.sh`.
4. The release APK should be created at:
   `build/app/outputs/flutter-apk/app-release.apk`

The script generates the standard Android platform project files, downloads Flutter dependencies, and builds the release APK.

## Option 2: Build in GitHub Actions (without installing Flutter locally)

1. Create a GitHub repository and upload the contents of this folder.
2. Open the repository's **Actions** tab.
3. Select **Build NhakaLearn Android APK**.
4. Choose **Run workflow**.
5. When the workflow completes, open the run and download the `nhakalearn-android-apk` artifact.
6. Extract the artifact to obtain `app-release.apk`.

The workflow builds the APK in GitHub's hosted Android/Flutter environment. You need a GitHub account and must upload the source yourself.

## Install on an Android device
1. Transfer `app-release.apk` to the Android phone.
2. Open the APK file and follow Android's installation prompts.
3. If Android asks, allow installation from the file manager/browser used to open the APK.
4. The app is a prototype; use sample data only.

## Prototype limitations
- This source package has not been compiled or tested in this environment.
- Teacher joining codes, class rosters, lesson assignments, parent-child linking and progress are demo-only and are not saved to a backend.
- No real authentication, school verification, secure parent consent workflow, cloud sync or durable offline database is implemented yet.
- The sample lesson is illustrative and must be checked against the current Ministry-approved Heritage-Based Curriculum before educational deployment.
- Do not enter real children's personal information.

## Source
Flutter app source is in `lib/main.dart`; dependencies are in `pubspec.yaml`.
