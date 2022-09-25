//
//  Dependencies.swift
//  Config
//
//  Created by Taeyoung Son on 2022/09/25.
//

import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", .exact("0.40.2"))
    ],
    platforms: [.iOS]
)
