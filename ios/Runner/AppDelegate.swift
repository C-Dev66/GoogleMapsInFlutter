import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    GMSServices.provideAPIKey("AIzaSyDBCyDMwElU1n_0I1nkwpuwTqVW3ik8I-A")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
