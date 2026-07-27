#if SWIFT_PACKAGE
import Flutter
import Foundation

/// Swift Package Manager registration entry point.
///
/// CocoaPods continues to use the Objective-C compatibility shim in
/// `ios/Classes`; this type is compiled only for SwiftPM so both integrations
/// expose the same Flutter plugin class without duplicate symbols.
@objc(AppinioSocialSharePlugin)
public final class AppinioSocialSharePlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        SwiftAppinioSocialSharePlugin.register(with: registrar)
    }
}
#endif
