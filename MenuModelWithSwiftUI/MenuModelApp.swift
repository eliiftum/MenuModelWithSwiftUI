//
//  MenuModelApp.swift
//  MenuModel
//
//  Created by Elif Tum on 20.09.2023.
//

import SwiftUI

@main
struct MenuModelApp: App {
    var body: some Scene {
        WindowGroup {
            SideMenu(menuModel: MockData.generateMockMenuModel())
        }
    }
}
