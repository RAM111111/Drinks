//
//  drinkrow.swift
//  Drinks
//
//  Created by ر on 22/02/1442 AH.
//  Copyright © 1442 r. All rights reserved.
//

import SwiftUI

struct drinkrow: View {
    
    var categoryname:String
    var drinky:[drinkss]
    
    var body: some View {
       VStack(alignment: .leading){
            Text(self.categoryname)
                .font(.title)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top){
                    ForEach(self.drinky){
                    drinko in
                    Drinkitem(drink: drinko)
                        .frame(width:300)
                        .padding(.trailing, 30)
                    }

                }

            }
            
        }

    }
    
}

struct drinkrow_Previews: PreviewProvider {
    static var previews: some View {
        drinkrow(categoryname: "HOT", drinky: drinkdata)
    }
}
