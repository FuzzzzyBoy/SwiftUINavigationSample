//
//  AboutView.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    @State private var isFullInfoPresent = false
    
    var body: some View {
        VStack {
            Text("This app created by Kirill Shakhansky")
            Button(action: {
                self.isFullInfoPresent.toggle()
            }) {
                Text("Show full info")
            }
        }.sheet(isPresented: $isFullInfoPresent) {
            Text("Full info")
        }
    }
    
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
