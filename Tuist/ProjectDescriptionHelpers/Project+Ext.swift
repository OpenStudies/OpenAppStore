import ProjectDescription

extension Project {
    public static func appTargets(
        name: String,
        appDependencies: [TargetDependency] = [],
        testDependencies: [TargetDependency] = []
    ) -> [Target] {
        let sources = Target(name: name, platform: .iOS, product: .app,
                            bundleId: "com.openstudies.\(name)", infoPlist: .default,
                            sources: ["Sources/**"], resources: ["Resources/**"],
                             dependencies: appDependencies)
        
        let tests = Target(name: "\(name)Tests", platform: .iOS, product: .unitTests,
                           bundleId: "com.openstudies.\(name)Tests", infoPlist: .default,
                           sources: ["Tests/**"],
                           dependencies: [.target(name: name)] + testDependencies)
        
        return [sources, tests]
    }
}

extension Project {
    public static func staticFrameworkTargets(
        name: String,
        frameworkDependencies: [TargetDependency] = [],
        testDependencies: [TargetDependency] = []
    ) -> [Target] {
        let sources = Target(name: name, platform: .iOS, product: .staticFramework,
                            bundleId: "com.openstudies.\(name)", infoPlist: .default,
                            sources: ["Sources/**"], dependencies: frameworkDependencies)
        
        let tests = Target(name: "\(name)Tests", platform: .iOS, product: .unitTests,
                           bundleId: "com.openstudies.\(name)Tests", infoPlist: .default,
                           sources: ["Tests/**"],
                           dependencies: [.target(name: name)] + testDependencies)
        
        return [sources, tests]
    }
}
