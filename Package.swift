// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "TruvideoSdk",
    products: [
        .library(
            name: "TruvideoSdk",
            targets: ["TruvideoSdkTargets"]),
    ],
    dependencies: [
        .package(url: "https://github.com/aws-amplify/aws-sdk-ios-spm", exact: "2.33.4")
    ],
    targets: [
        .binaryTarget(
            name: "TruvideoSdk",
            url: "https://github.com/victor-arana-kenility/truvideo-sdk-ios-core-test/releases/download/1.0.0/TruvideoSdk.xcframework.zip",
            checksum: "073c8feab019bd62e46014feecd0d37535412ceb9b5955536557a5810ca0b039"
        ),
        .binaryTarget(
            name: "Common",
            url: "https://github.com/victor-arana-kenility/truvideo-sdk-ios-common-test/releases/download/0.0.5/Common.xcframework.zip",
            checksum: "43fcac1b0801d7c3f06ba256be78b133f3317e16d96bbd84ec0b110b59448c76"
        ),
        .binaryTarget(
            name: "Shared",
            url: "https://github.com/victor-arana-kenility/truvideo-sdk-ios-shared-test/releases/download/0.0.4/shared.xcframework.zip",
            checksum: "af7ff1796866ada9e0d21946bc160d60a46054cd31ba93c9223ed0c3ba9ecfa2"
        ),
        .target(
            name: "TruvideoSdkTargets",
            dependencies: [
                .target(name: "TruvideoSdk"),
                .target(name: "Common"),
                .target(name: "Shared"),
                .product(name: "AWSS3", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCore", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCognitoIdentityProvider", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCognitoIdentityProviderASF", package: "aws-sdk-ios-spm")
            ],
            path: "Sources"
        )
    ]
)
