# UXCam iOS SDK

This is the UXCam iOS SDK

# To install

[NB: If you are currently using version 3.2.6 or earlier please do a deep clean of your build environment before updating. XCode has exhibited some issues with the change from a .framework packaged library to .xcframework]

## Using [Cocoapods](https://cocoapods.org/)

Add the following to your Podfile:

`pod 'UXCam'`

and run `pod update` and you should be good to go.

NB: Make sure you are using Cocoapods version 1.10.0 or higher - earlier versions don't properly support XCFramworks. `pod --version` to check.


## Using Swift Package Manager

[NB: Due to issues such as https://forums.swift.org/t/swiftpm-binarytarget-dependency-and-code-signing/38953/38 you will be unable to ship to AppStore using the SPM for UXCam, so please continue with CocoaPods until XCode/SPM is fixed]

Starting with the 3.3.0 release UXCam for iOS supports installation via [Swift Package Manager](https://swift.org/package-manager/) in Beta status. Please report any problems here.

## Limitations

Follow the instructions [here](SwiftPM-README.md)
[NB: on Version 12.2 (12B45b) on macOS 10.15.7 (19H15) picking to resolve to a version is crashing XCode. Pick 'main' branch for a working integration.]

# Integration

Get your App key from the dashboard at UXCam.com

## Objective-C

In your `AppDelegate.m` file:

	#import <UXCam/UXCam.h>

and in your `application:didFinishLaunchingWithOptions:` method add:

```objective-c
	[UXCam optIntoSchematicRecordings];
	[UXCam startWithKey:@"App-key from UXCam"]; 
```

## Swift

In your `AppDelegate.swift` file:

	import UXCam
	
and in your `func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool` function add:

```swift
	UXCam.optIntoSchematicRecordings()
	UXCam.start(withKey:"App-key from UXCam")
```


## Developer Documentation

Documentation on using the various API methods can be found [here](https://help.uxcam.com/hc/en-us/categories/115000129131-Developer-Guide)



## Acknowledgements

Thanks to:

 [Anurag Ajwani](https://medium.com/@anuragajwani) for a series of excellent articles on building and distributing XCFrameworks.
 
 [Boris Bielik](https://forums.swift.org/t/swiftpm-binary-target-with-sub-dependencies/40197/7) for the post on how to get SPM working with binary targets and dependencies.
 
