// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Apple-SwiftPackage-KochavaUI-XCFramework",
    platforms:
    [
        .iOS(.v15),
        .macCatalyst(.v15),
        .macOS(.v12),
        .tvOS(.v16),
        .visionOS(.v1),
        .watchOS(.v8)
    ],
    products:
    [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        // .package(name: "KochavaNetworking", path: "../Apple-SwiftPackage-KochavaNetworking-XCFramework"),
        .library(
            name: "KochavaUI",
            targets:
            [
                "KochavaUI"
            ]
        ),
    ],
    dependencies:
    [
        .package(
            name: "Apple-SwiftPackage-KochavaNetworking-XCFramework",
            path: "./../Apple-SwiftPackage-KochavaNetworking-XCFramework"
        )
//        .package(
//            url: "https://github.com/Kochava/Apple-SwiftPackage-KochavaNetworking-XCFramework",
//            from: "9.0.0"
//        )
    ],
    targets:
    [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "KochavaUI",
            path: "KochavaUI.xcframework"
        ),
        .testTarget(
            name: "KochavaUITests",
            dependencies:
            [
                .product(
                    name: "KochavaNetworking",
                    package: "Apple-SwiftPackage-KochavaNetworking-XCFramework"
                ),
                "KochavaUI"
            ]
        )
    ]
)
