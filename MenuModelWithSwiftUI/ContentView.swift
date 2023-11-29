//
//  ContentView.swift
//  MenuModel
//
//  Created by Elif Tum on 20.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}


struct Drawer_Previews: PreviewProvider {
    
    struct Preview: View {
        
        @State private var isOpened = true
        @State private var counter = 0
        
        var body: some View {
            BaseMenu(
                isOpened: $isOpened,
                menu: {
                    ZStack {
                        Color.gray
                        VStack {
                            Button("Home") {
                                isOpened = false
                            }
                            Button("Profile"){
                                
                            }
                        }
                    }
                    .frame(width: 300)
                },
                content: {
                    ZStack {
                        Color.purple
                        
                        Button("Open: \(counter)") {
                            withAnimation {
                                isOpened = true
                                counter += 1
                            }
                        }
                    }
                    .ignoresSafeArea()
                }
            )
        }
    }
    
    
    static var previews: some View {
        Preview()
    }
}

