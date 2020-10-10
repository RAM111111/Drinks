//
//  Drinkdetail.swift
//  Drinks
//
//  Created by ر on 23/02/1442 AH.
//  Copyright © 1442 r. All rights reserved.
//

import SwiftUI

struct Drinkdetail: View {
    var drink:drinkss
    var body: some View {
        List(){
            ZStack(){
        Image(drink.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
        Rectangle()
            .frame(height:80)
        .opacity(0.25)
        .blur(radius:10)
        HStack{
            VStack(alignment:.leaidng,spacing: 8){
                Text(drink.name)
//                .color(.white)
                .font(.largetitle)
                
            }
            .paddigng(.leading)
            Spacer()
        }
    }
        .listRowInsets(EdgeInsets())
            
        }
}
}
struct Drinkdetail_Previews: PreviewProvider {
    static var previews: some View {
        Drinkdetail(drink:drinkdata[3])
    }
}
