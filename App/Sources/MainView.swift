//
//  MainView.swift
//  OpenAppStore
//
//  Created by sean on 2022/09/29.
//  Copyright © 2022 tuist.io. All rights reserved.
//

import Combine
import Foundation
import SwiftUI

import Application
import Home
import Search

struct MainView: View {
  
  @State private var selectionValue: Int = 0
  
  init() {
    
    let appearance = UITabBarAppearance()
    appearance.backgroundColor = .white
    appearance.shadowImage = nil
    appearance.shadowColor = nil
    UITabBar.appearance().standardAppearance = appearance
  }
  
  var body: some View {
    TabView(selection: $selectionValue) {
      HomeView()
        .tabItem {
          Image(systemName: "house.fill")
        }
      
      ApplicationView()
        .tabItem {
          Image(systemName: "square.stack.3d.up.fill")
        }
      
      SearchView()
        .tabItem {
          Image(systemName: "magnifyingglass")
        }
    }.background(Color.white)
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
