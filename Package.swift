// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SitumSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "SitumSDK",
            targets: ["SitumSDK"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "SitumSDK",
            url: "https://repo.situm.es:443/artifactory/libs-release-local/iOS/SitumSDK/3.21.0/SitumSDK.xcframework.zip",
                       checksum: "2c2b38d4e7c5cb269e4fb49249f86d91b5d37c7d1b01960ad99f2cd144aecb85"
        ),
    ]
)


/*
 * Make sure to manually add the following dependencies in the project using this package:
 *
 * Frameworks: 'CoreLocation', 'CoreMotion'
 * Libraries: 'c++', 'z'
 * Linker settings: Add `$(inherited) -ObjC` to `OTHER_LDFLAGS` in the build settings of your project.
 */
