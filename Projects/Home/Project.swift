//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Taeyoung Son on 2022/10/01.
//

import ProjectDescription
import ProjectDescriptionHelpers

private let name = "Home"

let project = Project(
    name: name,
    organizationName: "com.openstudies",
    targets:
        Project.makeTargets(
            name: name,
            product: .staticFramework,
            targetependencies: [.external(name: "ComposableArchitecture")]
        )
)
