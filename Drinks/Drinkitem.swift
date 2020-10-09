//
//  Drinkitem.swift
//  Drinks
//
//  Created by ر on 13/02/1442 AH.
//  Copyright © 1442 r. All rights reserved.
//

import SwiftUI

struct Drinkitem: View {
    var drink:drinkss
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0){
            Image(drink.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode:.fill)
                .frame(width:300,height:170)
                .cornerRadius(10)
                .shadow(radius:10)
            
            VStack(alignment: .leading, spacing: 5.0){
            Text(drink.name)
                .foregroundColor(.primary)
                .font(.headline)
            Text(drink.description)
                .foregroundColor(.secondary)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height:40)
                }
            
        
        }
        .padding(0.0)
    }
}

struct Drinkitem_Previews: PreviewProvider {
    static var previews: some View {
        Drinkitem(drink: drinkdata[0])
    }
}
