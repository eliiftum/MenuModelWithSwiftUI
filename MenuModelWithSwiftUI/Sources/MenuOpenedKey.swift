//
//  MenuOpenedKey.swift
//  MenuModel
//
//  Created by Elif Tum on 20.09.2023.
//

import SwiftUI

private struct MenuOpenedKey: EnvironmentKey {
  
  static var defaultValue: Binding<Bool> = .constant(false)
}

extension EnvironmentValues {

  public var isDrawerOpened: Binding<Bool> {
    get { self[MenuOpenedKey.self] }
    set { self[MenuOpenedKey.self] = newValue }
  }
}
