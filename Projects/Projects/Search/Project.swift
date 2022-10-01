//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Taeyoung Son on 2022/10/01.
//

import ProjectDescription
import ProjectDescriptionHelpers

private let name = "Search"

let project = Project(
    name: name,
    organizationName: "com.openstudies",
    targets:
        Project.staticFrameworkTargets(
            name: name,
            frameworkDependencies: [.external(name: "ComposableArchitecture")]
        )
)
