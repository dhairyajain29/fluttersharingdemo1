import UIKit
import Flutter
import flutter_sharing_intent

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {

       let sharingIntent = SwiftFlutterSharingIntentPlugin.instance
       /// if the url is made from SwiftFlutterSharingIntentPlugin then handle it with plugin [SwiftFlutterSharingIntentPlugin]
       if sharingIntent.hasSameSchemePrefix(url: url) {
           return sharingIntent.application(app, open: url, options: options)
       }

       // Proceed url handling for other Flutter libraries like uni_links
       return super.application(app, open: url, options:options)
     }
}
