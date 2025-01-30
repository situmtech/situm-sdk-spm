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
            url: "https://repo.situm.es:443/artifactory/libs-release-local/iOS/SitumSDK/3.24.1/SitumSDK.xcframework.zip",
                       checksum: "1c5d6c745a409aab4ded13dd9fc8ac9800330d29b6bd1a9eb0a54068735a7d71"
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
