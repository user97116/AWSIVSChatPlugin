// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "AWSChat",
    platforms: [.iOS(.v14)], // Minimum iOS version is 14
    products: [
        // Expose AWSChat as a library to other packages or modules
        .library(
            name: "AWSChat",
            targets: ["AWSChat"]
        ),
    ],
    dependencies: [
        // Add any other dependencies here if needed
    ],
    targets: [
        // Binary target for AmazonIVSChatMessaging
        .binaryTarget(
            name: "AmazonIVSChatMessaging",
            url: "https://ivschat.live-video.net/1.0.0/AmazonIVSChatMessaging.xcframework.zip",
            checksum: "c92ac3adc061a3fa5558311f8d99fa9b9dba7a00b3482a4f4ac90b2ff4f65b66"
        ),
        // Source code target for AWSChat
        .target(
            name: "AWSChat",
            dependencies: ["AmazonIVSChatMessaging"] // Declare the binary target as a dependency
        ),
        // Test target for AWSChat
        .testTarget(
            name: "AWSChatTests",
            dependencies: ["AWSChat"]
        ),
    ]
)
