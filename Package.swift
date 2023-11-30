// swift-tools-version: 5.8

import PackageDescription

let package = Package(
	name: "LanguageServer",
	platforms: [.macOS(.v11), .iOS(.v14), .tvOS(.v14), .watchOS(.v7)],
	products: [
		.library(name: "LanguageServer", targets: ["LanguageServer"]),
	],
	dependencies: [
		.package(url: "https://github.com/ChimeHQ/LanguageServerProtocol", from: "0.11.0"),
	],
	targets: [
		.target(name: "LanguageServer", dependencies: ["LanguageServerProtocol"]),
		.testTarget(name: "LanguageServerTests", dependencies: ["LanguageServer"]),
	]
)

let swiftSettings: [SwiftSetting] = [
	.enableExperimentalFeature("StrictConcurrency")
]

for target in package.targets {
	var settings = target.swiftSettings ?? []
	settings.append(contentsOf: swiftSettings)
	target.swiftSettings = settings
}
