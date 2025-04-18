# Changelog

## 6.7.1.6.0
* Certified with CSJ SDK 6.7.1.6.

## 6.7.1.3.0
* Certified with CSJ SDK 6.7.1.3.
* Updated minimum iOS version to 12.0.

## 6.7.0.8.0
* Certified with CSJ SDK 6.7.0.8.
* Removed deprecated code paths based on the minimum supported AppLovin MAX SDK version 11.5.2.

## 6.6.1.6.0
* Certified with CSJ SDK 6.6.1.6.

## 6.6.1.5.0
* Certified with CSJ SDK 6.6.1.5.

## 6.6.1.3.0
* Certified with CSJ SDK 6.6.1.3.

## 6.6.1.2.0
* Certified with CSJ SDK 6.6.1.2.

## 6.4.3.7.0
* Certified with CSJ SDK 6.4.3.7.
* Removed redundant log output when initialization was already completed.

## 6.4.3.2.0
* Certified with CSJ SDK 6.4.3.2.

## 6.4.2.7.0
* Certified with CSJ SDK 6.4.2.7.

## 6.4.2.6.0
* Certified with CSJ SDK 6.4.2.6.

## 6.4.2.2.0
* Certified with CSJ SDK 6.4.2.2.

## 6.4.1.7.0
* Certified with CSJ SDK 6.4.1.7.

## 6.4.1.0.0
* Certified with CSJ SDK 6.4.1.0.
* Remove deprecated native API usages.
* Remove `BUErrorSlotAB_Disable` and `BUErrorSlotAB_EmptyResult` from error mapping.

## 6.1.3.4.0
* Certified with CSJ SDK 6.1.3.4.
* Updated minimum Xcode requirement to 15.0.

## 6.0.1.2.0
* Certified with ByteDance China SDK 6.0.1.2.

## 5.9.1.6.0
* Certified with ByteDance China SDK 5.9.1.6.
* Removed privacy APIs since they have been deprecated (https://www.csjplatform.com/supportcenter/5373).
* Removed `configuration.logLevel` since it has been deprecated in favor of sending relevant information via callbacks.
* Updated the dependency to `Ads-CN/BUAdSDK`.
* Updated minimum Xcode requirement to 14.1.
* Updated minimum iOS version to 11.0.

## 4.9.0.7.2
* Updated minimum Xcode requirement to 14.0.
* Fixed potential memory leaks by clearing delegates in `destroy:` method.   
* Fix native banner/MREC impression and clicks not firing.
* Remove arm64 simulator slice to match ByteDance China SDK.

## 4.9.0.7.1
* Removed unused `kDefaultAppOpenAdLoadingTimeoutSeconds` constant.
* Added switch statement to handle `BUErrorCodeBiddingAdmExpired` error case.

## 4.9.0.7.0
* Certified with ByteDance China SDK 4.9.0.7.

## 4.7.1.1.2
* Support for native ads in external plugins (e.g. React Native).
* Disable bitcode, as Apple deprecated it in Xcode 14 (https://developer.apple.com/documentation/xcode-release-notes/xcode-14-release-notes).

## 4.7.1.1.1
* Updated the dependency to `Ads-CN/BUAdSDK_Compatible`.

## 4.7.1.1.0
* Initial commit.
* Minimum AppLovin MAX SDK version 11.5.2.
