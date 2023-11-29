//
//  MockData.swift
//  MenuModel
//
//  Created by Elif Tum on 22.09.2023.
//

import Foundation

public struct MockData {
   public static func generateMockMenuModel() -> SUIMenuModel {
        let header = SUIHeaderModel(
            title: "John Doe",
            subTitle: "@johndoe",
            description: "Software Developer",
            image: "person.crop.circle"
        )
        
        let listSections = [
            SUISectionModel(title:"Posts",
                             action: {
                print("Posts")
            },
                             icon:"signpost.and.arrowtriangle.up"),
            
            SUISectionModel(title:"Followers",
                             action: {
                print("Follewers")
            },
                             icon:"square.and.arrow.up"),
            
            SUISectionModel(title:"Following",
                             action: {
//                 Action for Following section
            },
                             icon: "square.and.arrow.up")
            // Add more sections as needed
        ]
        
        let footer = SUIFooterModel(buttonTitle: "Log Out", action: {})
        
        return SUIMenuModel(header: header, listSections: listSections, footer: footer)
    }
}
