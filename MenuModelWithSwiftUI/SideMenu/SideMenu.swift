//
//  SideMenu.swift
//  MenuModel
//
//  Created by Elif Tum on 22.09.2023.
//

import SwiftUI

public struct SideMenu: View {
    
    let menuModel: SUIMenuModel
    init(menuModel: SUIMenuModel) {
        self.menuModel = menuModel
    }
    
    @State var isOpened = false
    
    public var body: some View {
        ZStack{
            VStack{
                BaseMenu(isOpened: $isOpened) {
                    menuView
                        .frame(width: 200)
                } content: {
                    Button {
                        isOpened.toggle()
                    } label: {
                        Text("Menüyü Aç")
                    }

                }
            }
            
        }
    }
    
    var menuView: some View {
        
        ZStack {
            Color.clear
                .onTapGesture(perform: {
                    isOpened.toggle()
                })
            VStack {
                ScrollView{
                    VStack{
                        headerView
                            .padding()
                        listSection
                            .padding()
                        Spacer(minLength: 0)
                        Spacer(minLength: 0)
                       
                    }
                }
                footerView
            }
        }
        //Gradient Background
        .padding()
        .foregroundStyle(.white)
        .font(.title2)
        .background(
            LinearGradient(gradient: Gradient(colors: [.purple.opacity(0.9),.red.opacity(0.8)]), startPoint: .leading, endPoint:.trailing )
        )
        
        .frame(width: 300)
        .cornerRadius(5)
        
    }
    
    var headerView: some View {
        VStack{
            HStack{
                
                //Profile Picture
                Image(systemName: menuModel.header?.image ?? "")
                    .resizable()
                    .clipShape(Circle(), style: FillStyle())
                    .padding(.leading, 10 )
                
                //Title and Subtitle
                VStack{
                    Text(menuModel.header?.title ?? "")
                        .font(.title)
                    Text(menuModel.header?.subTitle ?? "")
                        .font(.title2)
                }
            }
        }
    }
    
    var listSection: some View{
        VStack{
            ForEach(menuModel.listSections ?? [] , id: \.self){
                item in
                ListSectionCell(listSectionModel: item)
            }
            .padding(.leading, 25)
            
        }
    }

    
    var footerView: some View {
        ZStack {
            Button {
                _ = menuModel.footer?.action?()
            } label: {
                Text(menuModel.footer?.buttonTitle ?? "")
            }
        }
        
    }
    
}

#Preview {
    SideMenu(menuModel: MockData.generateMockMenuModel())
}
