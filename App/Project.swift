//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Taeyoung Son on 2022/10/01.
//

import ProjectDescription
import ProjectDescriptionHelpers

private let name = "App"

let project = Project(
    name: name,
    organizationName: "com.openstudies",
    targets:
        Project.makeTargets(
            name: name,
            product: .app,
            targetependencies: [
                .project(target: "Home", path: .relativeToRoot("Projects/Home")),
                .project(target: "Library", path: .relativeToRoot("Projects/Library")),
                .project(target: "Search", path: .relativeToRoot("Projects/Search"))
            ]
        )
)

