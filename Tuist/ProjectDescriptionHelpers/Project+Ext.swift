import ProjectDescription

extension Project {
    public static func makeTargets(
        name: String,
        product: Product,
        targetependencies: [TargetDependency] = [],
        testDependencies: [TargetDependency] = []
    ) -> [Target] {
        let sources = Target(name: name, platform: .iOS, product: product,
                            bundleId: "com.openstudies.\(name)", infoPlist: .default,
                            sources: ["Sources/**"], dependencies: targetependencies)
        
        let tests = Target(name: "\(name)Tests", platform: .iOS, product: .unitTests,
                           bundleId: "com.openstudies.\(name)Tests", infoPlist: .default,
                           sources: ["Tests/**"],
                           dependencies: [.target(name: name)] + testDependencies)
        
        return [sources, tests]
    }
}
