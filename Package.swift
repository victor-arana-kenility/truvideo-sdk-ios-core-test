// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "TruvideoSdk",
    products: [
        .library(
            name: "TruvideoSdk",
            targets: ["TruvideoSdkTargets"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "TruvideoSdk",
            url: "https://github.com/victor-arana-kenility/truvideo-sdk-ios-core-test/releases/download/0.0.7/TruvideoSdk.xcframework.zip",
            checksum: "720a33e7562eff364158602deb8936638b5520380a1e4e5f5eabd6bd0bf256be"
        ),
        .binaryTarget(
            name: "Common",
            url: "https://github.com/victor-arana-kenility/truvideo-sdk-ios-common-test/releases/download/0.0.2/Common.xcframework.zip",
            checksum: "43fcac1b0801d7c3f06ba256be78b133f3317e16d96bbd84ec0b110b59448c76"
        ),
        .binaryTarget(
            name: "Shared",
            url: "https://github.com/victor-arana-kenility/truvideo-sdk-ios-shared-test/releases/download/0.0.1/shared.xcframework.zip",
            checksum: "00970e9244e430d33edb061c572831584d7b4adb2daee47c2c078eaea5aa9363"
        ),
        .target(
            name: "TruvideoSdkTargets",
            dependencies: [
                .target(name: "TruvideoSdk"),
                .target(name: "Common"),
                .target(name: "Shared")
            ],
            path: "Sources"
        )
    ]
)
