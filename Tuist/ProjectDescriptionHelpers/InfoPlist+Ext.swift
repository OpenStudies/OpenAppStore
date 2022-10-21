//
//  InfoPlist+Ext.swift
//  ProjectDescriptionHelpers
//
//  Created by sean on 2022/10/02.
//

import ProjectDescription

// info.plist의 내용을 직접 지정
extension InfoPlist {
  static func app(name: String, bundleId: String = "") -> Self {
    
    let dictionary: [String: InfoPlist.Value] = [
      "CFBundleName": .string(name),
      "CFBundleDisplayName": .string(name),
      "CFBundleIdentifier": bundleId.isEmpty ? .string("com.openstudies.\(name)") : .string(bundleId),
      "CFBundleShortVersionString": .string("1.0"),
      "CFBundleVersion": .string("0"),
      "CFBuildVersion": .string("0"),
      "UILaunchStoryboardName": .string("Launch Screen"),
      "UISupportedInterfaceOrientations": .array([.string("UIInterfaceOrientationPortrait")]),
      "UIUserInterfaceStyle": .string("Light")
    ]
    
    return .extendingDefault(with: dictionary)
  }
}
