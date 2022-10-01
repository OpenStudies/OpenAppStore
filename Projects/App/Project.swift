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
        Project.appTargets(
            name: name,
            appDependencies: [
                .project(target: "Home", path: "../Projects/Home"),
                .project(target: "Application", path: "../Projects/Application"),
                .project(target: "Search", path: "../Projects/Search")
            ]
        )
)

