//
//  BaseMenu.swift
//  MenuModel
//
//  Created by Elif Tum on 20.09.2023.
//

import SwiftUI

public struct BaseMenu<Menu: View, Content: View>: View {
    
    @Binding private var isOpened: Bool
    
    let menu: Menu
    let content: Content
    
    public init(
        isOpened: Binding<Bool>,
        @ViewBuilder menu:  () -> Menu,
        @ViewBuilder content: () -> Content
        
    ) {
        _isOpened = isOpened
        self.menu = menu()
        self.content = content()
    }
    
    // MARK: - Body
    public var body: some View {
        
        ZStack(alignment: .leading) {
            
            if isOpened {
                Color.clear
                    .contentShape(RoundedRectangle(cornerRadius: 8))
                    .onTapGesture {
                        if isOpened {
                            isOpened.toggle()
                        }
                    }
                
                menu
                    .transition(.move(edge: .leading))
                    .zIndex(1)
            }
            else{
                content
            }
          
        }
        .animation(.spring(), value: isOpened)
        .environment(\.isDrawerOpened, $isOpened)
    }
}



