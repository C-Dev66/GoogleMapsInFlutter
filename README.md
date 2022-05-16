<img src="https://github.com/C-Dev66/RSVPGuestbookChatApp/blob/main/screenshots/SideBySide.png" alt="HomePage"/>

# GoogleMapsInFlutter

> This multi-platform application(Andoird, iOS, Web) uses Google Map's Flutter plugin to automatically handle access to the Google Map servers, map displays, and responds to user gestures such as clicks and drags. Adding object markers to the map provides additional information for locations, and allows the user to interact with the map in real-time.

---

### Table of Contents:

- [Description](#description)
- [Code Snippets](#code-snippets)
- [Summary](#summary)
- [Demo](#demo)




---

## Description

Building the application will include Flutter's SDK and the Google Maps Platform for the handling of API keys for Anroid, iOS, & Javascript for web.

- Display a Google Map
- Retrieve map data from a web service
- Display the data as markers on the Map

Cloud Firestore is a NoSQL database, and data stored in the database is split into collections, documents, fields, and subcollections.

---

## Code Snippets

> Setting up the application
```
//Create the application

flutter create google_maps_in_flutter

// Configure dependencies

flutter pub add google_maps_flutter
flutter pub add google_maps_flutter_web
```

> Configure for iOS platform & AndroidSDK
```bash
// ios/Podfile

# Set platform to 11.0 to enable latest Google Maps SDK
platform :ios, '11.0'

# CocoaPods analytics sends network stats synchronously affecting flutter build latency.
ENV['COCOAPODS_DISABLE_STATS'] = 'true'

// android/app/build.gradle
android {
    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId "com.example.google_maps_in_flutter"
        minSdkVersion 20                      // Update from 16 to 20
        targetSdkVersion 30
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
    }
}
```
### Adding API Keys to all 3 platforms(iOS, Web, Android)


#### Android
> android/app/src/main/AndroidManifest.xml
```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.google_maps_in_flutter">
    <application
        android:label="google_maps_in_flutter"
        android:icon="@mipmap/ic_launcher">

        <!-- Add your Google Maps API key here -->
        <meta-data android:name="com.google.android.geo.API_KEY"
               android:value="YOUR-KEY-HERE"/>

        <activity
            android:name=".MainActivity"
            android:launchMode="singleTop"
            android:theme="@style/LaunchTheme"
```


#### iOS
> ios/Runner/AppDelegate.swift
```swift
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // Add your Google Maps API key
    GMSServices.provideAPIKey("YOUR-API-KEY")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
```

#### Web
> web\index.html 
```html
<head>
  <base href="/">

  <meta charset="UTF-8">
  <meta content="IE=Edge" http-equiv="X-UA-Compatible">
  <meta name="description" content="A new Flutter project.">

  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="google_maps_in_flutter">
  <link rel="apple-touch-icon" href="icons/Icon-192.png">

  <!-- TODO: Add your Google Maps API key here -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR-KEY-HERE"></script>
```


---

## Summary

Awesome introduction to Firebase, Cloud Firestore, & Security Rules. Really enjoyed this project and will seek to build more applications with their native database service. All around great experience, the future is bright for Flutter. Glad to be able to partaken in this revolutinary stack. 🤩🫶

For more information refer to the official documentation.

- [Firebase Documentation](https://firebase.google.com/docs)
- [Flutterfire](https://firebase.google.com/docs/flutter/setup?platform=ios)
- [Google's awesome Flutter Youtube channel, Lots of great content here](https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw)

---

## Demo
![HomePage Gif](https://github.com/C-Dev66/RSVPGuestbookChatApp/blob/main/screenshots/DemoGif.gif)

