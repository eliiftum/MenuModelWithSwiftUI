//
//  MenuModel.swift
//  MenuModel
//
//  Created by Elif Tum on 22.09.2023.
//

import Foundation
import SwiftUI

public struct SUIMenuModel: Identifiable{
    public init(id: UUID = UUID(),
                  header: SUIHeaderModel? = nil,
                  listSections: [SUISectionModel]? = nil,
                  footer: SUIFooterModel? = nil) {
        
        self.id = id
        self.header = header
        self.listSections = listSections
        self.footer = footer
    }
    

    public var id = UUID()
    let header: SUIHeaderModel?
    let listSections: [SUISectionModel]?
    let footer: SUIFooterModel?
    
    
}

public struct SUIHeaderModel: Identifiable{
    public init(id: UUID = UUID(),
                  title: String? = nil,
                  subTitle: String? = nil,
                  description: String? = nil,
                  image: String? = nil) {
        
        self.id = id
        self.title = title
        self.subTitle = subTitle
        self.description = description
        self.image = image
    }
    
    
    public var id = UUID()
    let title: String?
    let subTitle: String?
    let description: String?
    let image: String?
    
    
}

public struct SUISectionModel: Identifiable, Hashable{
    public static func == (lhs: SUISectionModel, rhs: SUISectionModel) -> Bool {
        lhs.id == rhs.id
    }
    public func hash(into hasher: inout Hasher) {
            return hasher.combine(id)
        }
    
    public init(id: UUID = UUID(),
                  title: String? = nil,
                  action: (() -> Void)? = nil,
                  icon: String? = nil) {
        
        self.id = id
        self.title = title
        self.action = action
        self.icon = icon
    }
    
    
    public var id = UUID()
    let title: String?
    let action: (()->Void)?
    let icon: String?
    
}
public struct SUIFooterModel:Identifiable{
    internal init(id: UUID = UUID(), 
                  buttonTitle: String? = nil,
                  action: (() -> Void)? = nil) {
        
        self.id = id
        self.buttonTitle = buttonTitle
        self.action = action
    }
    
   
    public var id = UUID()
    let buttonTitle: String?
    let action: (()->Void)?
    
}

