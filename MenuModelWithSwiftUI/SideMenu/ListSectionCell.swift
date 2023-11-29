//
//  ListSectionCell.swift
//  MenuModel
//
//  Created by Elif Tum on 22.09.2023.
//

import SwiftUI

public struct ListSectionCell: View {
    
    let listSectionModel: SUISectionModel
    
    public var body: some View {
        HStack{
            Image(systemName: listSectionModel.icon ?? "")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 20,height: 20)
            Text(listSectionModel.title ?? "")
            Spacer(minLength: 0)
        }.onTapGesture {
            _ = listSectionModel.action?()
        }
    }
}

