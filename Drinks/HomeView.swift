//
//  ContentView.swift
//  Drinks
//
//  Created by ر on 13/02/1442 AH.
//  Copyright © 1442 r. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var categories:[String:[drinkss]]{
               .init(grouping: drinkdata,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            List(categories.keys.sorted(), id: \String.self) { key in
                    drinkrow(categoryname: "\(key)".uppercased(),
                         drinky: self.categories[key]!)
                        .frame(height: 320)
                        .padding(.top)
            }
//         .navigationBarTitle(Text("DRINKS"))
        
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
