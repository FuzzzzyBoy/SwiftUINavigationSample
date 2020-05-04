//
//  RootView.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import SwiftUI

struct RootView: View {

    var body: some View {
        TabView {
            SomeView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("First")
            }
            SomeView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Second")
            }
            SomeView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Third")
            }
        }
    }

}

struct SomeView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
