# UXCam iOS SDK

This is the UXCam iOS SDK

# To install

## Using [Cocoapods](https://cocoapods.org/)

Add the following to your Podfile:

`pod 'UXCam'`

and run `pod update` and you should be good to go.


## Using Swift Package Manager

Starting with the 3.3.0 release UXCam for iOS supports installation via [Swift Package Manager](https://swift.org/package-manager/) in Beta status. Please report any problems here.

## Limitations

- Requires Xcode 12.

Follow the instructions [here](SwiftPM-README.md)

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
 
