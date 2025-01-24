# SitumSDK
Situm SDK is a Plug-and-play UX component that will allow you to bring wayfinding capabilities to your apps in no-time. You can find more information [here](https://situm.com/docs/)

## Adding the dependency

`SitumSDK` is designed for Swift 5.8 and later. To depend on `SitumSDK`, either use Xcode to add the package dependency or add the following dependency to your Package.swift:

```swift
.package(url: "https://github.com/situmtech/situm-sdk-spm.git", .upToNextMinor(from: "3.19.0")),
```

The version 3.19.0 is just and example. Choose properly the range on versions you want to rely on.

Afterwards make sure you manually add the following system libraries and settings in the target that is using this package:

 * Linker settings: Apply the `-ObjC` flag. In `Configuration`, under `Linking/Other Linker Flags`, add the flag `-ObjC`.

 
