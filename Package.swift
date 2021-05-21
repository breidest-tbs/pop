// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pop",
    platforms: [
        //spec.ios.deployment_target = '8.0'
        .iOS(.v9),
        //spec.osx.deployment_target = '10.8'
        .macOS("10.8")
        //spec.tvos.deployment_target = '9.0'
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "pop",
            targets: ["pop"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
	   name: "pop",
	   path: "pop",
	   exclude: ["pop-ios-Info.plist","pop-osx-Info.plist","pop-tvos-Info.plist"]
        ),
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx11
)

