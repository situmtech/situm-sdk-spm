// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SitumSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "SitumSDK",
            targets: ["SitumSDKTarget"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "SitumSDK",
            url: "https://repo.situm.com:443/artifactory/libs-release-local/iOS/SitumSDK/3.32.0/SitumSDK.xcframework.zip",
            checksum: "3294f26d8bbc25869b10275a070749264c25679f70d87790dbb277435d5723ea"
        ),
        .target(
             name: "SitumSDKTarget",
             dependencies: ["SitumSDK"],
             path: "Situm",
             sources: ["SITEmpty.m"],
             publicHeadersPath: "Headers",
             linkerSettings: [
               .linkedLibrary("c++"),
               .linkedLibrary("z"),
               .linkedFramework("CoreLocation"),
               .linkedFramework("CoreMotion"),
             ]
        ),
    ]
)


/*
 * Make sure to manually add the following settings in the project using this package:
 *
 * Linker settings: Add `$(inherited) -ObjC` to `OTHER_LDFLAGS` in the build settings of your project.
 */
