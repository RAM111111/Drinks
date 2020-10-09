//
//  drinkrow.swift
//  Drinks
//
//  Created by ر on 22/02/1442 AH.
//  Copyright © 1442 r. All rights reserved.
//

import SwiftUI

struct drinkrow: View {
    
    var categorynae:String
    var drinky:[drinkss]
    
    var body: some View {
        
        ScrollView(){
            HStack(alignment: .top){
                ForEach(self.drinky,id: \.name){
                drink in
                Drinkitem(drink: drink)
                    .frame(width:300)
                    .padding(.trailing, 30)
                }

            }

        }
    }
}

struct drinkrow_Previews: PreviewProvider {
    static var previews: some View {
        drinkrow(categorynae: "HOT", drinky: drinkdata)
    }
}
