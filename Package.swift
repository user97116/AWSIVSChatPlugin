// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AmazonIVSChatMessaging",
    products: [
        .library(
            name: "AmazonIVSChatMessaging",
            targets: ["AmazonIVSChatMessaging"]),
    ],
    targets: [
		.binaryTarget(
			name: "AmazonIVSChatMessaging",
			path: "./AmazonIVSChatMessaging/AmazonIVSChatMessaging.xcframework"
		)
    ]
)
