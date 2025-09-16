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
            url: "https://repo.situm.com:443/artifactory/libs-release-local/iOS/SitumSDK/3.34.6/SitumSDK.xcframework.zip",
            checksum: "929a543091be6bb17fcf07eac7aa1603c0da722a7b47152c7c735908feae04c6"
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
