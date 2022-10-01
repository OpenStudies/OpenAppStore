import ProjectDescription

/*
                +-------------+
                |             |
                |     App     | Contains OpenAppStore App target and OpenAppStore unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
//let localHelper = LocalHelper(name: "MyPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers
//let project = Project.app(name: "OpenAppStore",
//                          platform: .iOS,
//                          additionalTargets: ["OpenAppStoreKit", "OpenAppStoreUI"],
//                          externalDependencies: [.external(name: "ComposableArchitecture")])

let workspace = Workspace(name: "OpenAppStore",
                          projects: [
                            "Projects/App",
                            "Projects/Projects/Home",
                            "Projects/Projects/Application",
                            "Projects/Projects/Search"
                          ]
)
