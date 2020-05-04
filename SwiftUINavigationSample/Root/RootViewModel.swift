//
//  RootViewModel.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import Foundation
import Combine

final class RootViewModel: ObservableObject {
    
    @Published var selectedTab: RootViewTab = .start
    
}
