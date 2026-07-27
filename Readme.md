# SitumSDK
Situm SDK is a Plug-and-play UX component that will allow you to bring wayfinding capabilities to your apps in no-time. You can find more information [here](https://situm.com/docs/)

## Adding the dependency

`SitumSDK` is designed for Swift 5.8 and later and requires iOS 16 or later. To depend on `SitumSDK`, either use Xcode to add the package dependency or add the following dependency to your Package.swift:

```swift
.package(url: "https://github.com/situmtech/situm-sdk-spm.git", .upToNextMinor(from: "3.41.0")),
```

The version 3.41.0 is just an example. Choose properly the range on versions you want to rely on.

The Swift Package declares ZipArchive 2.6.0 as an external dependency. The package links CoreLocation, CoreMotion, Security, libc++, libz, and libiconv.

 
