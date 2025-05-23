# Changelog

## 22.9.3.1
* Updated minimum iOS version to 12.0.
* Removed requirement of the title asset for native banners and MRECs.

## 22.9.3.0
* Certified with Smaato SDK 22.9.3.
* Removed deprecated code paths based on the minimum supported AppLovin MAX SDK version 13.0.0.

## 22.9.2.0
* Certified with Smaato SDK 22.9.2.

## 22.9.1.0
* Certified with Smaato SDK 22.9.1.
* Simplified API calls by removing selector checks; direct API calls are now safe with the updated min SDK version.

## 22.9.0.0
* Certified with Smaato SDK 22.9.0.

## 22.8.4.1
* Requires minimum AppLovin MAX SDK version be 13.0.0.
* Removed COPPA support.
* Remove deprecated native API usages.

## 22.8.4.0
* Certified with Smaato SDK 22.8.4.
* Remove deprecated callbacks `didStartRewardedAdVideo`, `didCompleteRewardedAdVideo`.
* Updated minimum Xcode requirement to 15.0.

## 22.8.3.0
* Certified with Smaato SDK 22.8.3.

## 22.8.2.0
* Certified with Smaato SDK 22.8.2.
* Added Privacy Manifest defining use of NSUserDefaults.

## 22.8.1.0
* Certified with Smaato SDK 22.8.1.

## 22.8.0.1
* Downgrade Smaato SDK to 22.7.0.

## 22.8.0.0
* Certified with Smaato SDK 22.8.0.

## 22.7.0.0
* Certified with Smaato SDK 22.7.0.

## 22.6.1.0
* Certified with Smaato SDK 22.6.1.

## 22.6.0.0
* Certified with Smaato SDK 22.6.0.

## 22.5.0.0
* Certified with Smaato SDK 22.5.0.
* Updated minimum iOS version to 11.0.

## 22.4.0.0
* Certified with Smaato SDK 22.4.0.

## 22.3.0.0
* Certified with Smaato SDK 22.3.0.

## 22.2.1.0
* Certified with Smaato SDK 22.2.1.

## 22.2.0.0
* Certified with Smaato SDK 22.2.0.
* Updated minimum Xcode requirement to 14.1.

## 22.1.3.0
* Certified with Smaato SDK 22.1.3.
* Fixed potential memory leaks by clearing delegates in `destroy:` method.   

## 22.1.2.0
* Certified with Smaato SDK 22.1.2.

## 22.1.1.0
* Certified with Smaato SDK 22.1.1.
* Remove the `privacySettingForSelector:fromParameters:` function and call privacy methods directly.
* Now requires MAX SDK version 6.14.0 or higher. 

## 22.1.0.1
* Add support for native ad view ads.

## 22.1.0.0
* Certified with Smaato SDK 22.1.0.

## 22.0.2.0
* Certified with Smaato SDK 22.0.2.

## 22.0.1.0
* Certified with Smaato SDK 22.0.1.

## 21.7.9.1
* Update to use `[MAAdapterError errorWithCode:errorString:thirdPartySdkErrorCode:thirdPartySdkErrorMessage:]` to avoid crashes with AppLovin SDK 11.4.1 and earlier.

## 21.7.9.0
* Certified with Smaato SDK 21.7.9.

## 21.7.8.1
* Support for native ads in external plugins (e.g. React Native).
* Disable bitcode, as Apple deprecated it in Xcode 14 (https://developer.apple.com/documentation/xcode-release-notes/xcode-14-release-notes).
* Add additional details for ad display failures. 

## 21.7.8.0
* Certified with Smaato SDK 21.7.8.

## 21.7.7.0
* Certified with Smaato SDK 21.7.7.

## 21.7.6.2
* Use local scope copy of native ad while preparing view.
* Update privacy settings before collecting signal. 

## 21.7.6.1
* Add support for returning the main image asset in `MANativeAd` for native ads.

## 21.7.6.0
* Certified with Smaato SDK 21.7.6.
* Distribute adapter as an XCFramework.

## 21.7.5.1
* Update ad display failed error code.

## 21.7.5.0
* Certified with Smaato SDK 21.7.5.

## 21.7.4.1
* Remove check for manual native ad assets.

## 21.7.4.0
* Certified with Smaato SDK 21.7.4.

## 21.7.3.0
* Certified with Smaato SDK 21.7.3.

## 21.7.1.4
* Add log for "is_location_collection_enabled" value.

## 21.7.1.3
* Add support for passing in a presenting view controller.

## 21.7.1.2
* Add support for passing local parameter "is_location_collection_enabled" to set `SmaatoSDK.gpsEnabled` for signal collection.
 
## 21.7.1.1
* Add support for passing local parameter "is_location_collection_enabled" to set `SmaatoSDK.gpsEnabled`.

## 21.7.1.0
* Certified with Smaato SDK 21.7.1.

## 21.7.0.1
* Fix native ads CTA button not clicking through.

## 21.7.0.0
* Certified with Smaato SDK 21.7.0.
* Update open source versions to allow compilation with AppLovin SDK v11.0.0+.

## 21.6.19.1
* Add support for native custom ads and native template ads.

## 21.6.19.0
* Certified with Smaato SDK 21.6.19.
* Add back signal collection.

## 21.6.17.1
* Comment out signal collection code.
* Downgrade Smaato SDK to 21.6.16 due to Xcode 12.5 requirement.

## 21.6.17.0
* Certified with Smaato SDK 21.6.17.
* Add signal collection.

## 21.6.16.0
* Certified with Smaato SDK 21.6.16.

## 21.6.14.0
* Update podspec to use `pod_target_xcconfig` over the deprecated `xcconfig`.
* Certified with Smaato SDK 21.6.14.

## 21.6.10.2
* Update podspec source from bintray to S3.
* Update ad load to fail if bid response is valid but ad request creation is not.
* Update ad load to use old API if bid response is not valid.

## 21.6.10.1
* Add support for passing creative id to SDK (supported in iOS SDK 6.15.0+).

## 21.6.10.0
* Certified with Smaato SDK 21.6.10.
* Add support to pass 3rd-party error code and description to SDK.

## 21.6.6.0
* Certified with Smaato SDK 21.6.6.

## 21.6.2.0
* Certified with Smaato SDK 21.6.2.

## 21.6.0.0
* Certified with Smaato SDK 21.6.0.

## 21.5.2.3
* Removed the i386 slice. Adapter will no longer work on 32-bit simulators.
* Update 7000000 version check to 6140000.
* Update initialization log.

## 21.5.2.2
* Remove unsupported GDPR consent setting code and remove previously set values.

## 21.5.2.1
* Update 70000 version check to 7000000.

## 21.5.2.0
* Add support for bidding (signal collection not required).

## 21.3.3.4
* Fix incorrect adapter version returned by the adapter.

## 21.3.3.3
* Updated to not set age restriction setting if nil.

## 21.3.3.2
* Roll back privacy changes.

## 21.3.3.1
* Fix code inconsistency with other adapters.
* Updated to not set age restriction setting if nil.

## 21.3.3.0
* Certified with SDK 21.3.3.

## 21.3.1.0
* Certified with SDK 21.3.1.

## 21.2.2.1
* Match Android's fix for Smaato crashes at the recommendation of Smaato's SDK team by calling all Smaato SDK APIs _after_ `Smaato.init(...)`.

## 21.2.2.0
* Certified with SDK 21.2.2.

## 21.2.1.0
* Certified with SDK 21.2.1.

## 21.1.2.0
* Certified with SDK 21.1.2.
* Updated the minimum required AppLovin SDK version to 6.5.0.

## 10.2.3.0
* Certified with SDK 10.2.3.
* Remove unused server parameters.

## 10.2.1.0
* Certified with SDK 10.2.1

## 10.2.0.2
* Add support for initialization status.

## 10.2.0.1
* Add Unity support for automatic dependency resolution. Please ensure that you are on the latest [AppLovin MAX Unity Plugin](https://bintray.com/applovin/Unity/applovin-max-unity-plugin).
* Add support for extra reward options.

## 10.2.0.0
* Certified with SDK 10.2.0.
* GDPR fixes.

## 10.1.2.1
* GDPR fixes.
  
## 10.1.2.0
* Initial commit.
