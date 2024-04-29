//
//  Beverage.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

struct Beverage: View {

    @State var beverage = ""
    
    var body: some View {
        VStack {
            Text("Thirsty, \(String(describing: userData["name"]))?")
            
            TextField("Are you a coffee, tea, or hot chocolate drinker?", text: $beverage)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
                .onSubmit() {
                    userData["beverage"] = beverage //enter user inpout for one key
                }
            
            NavigationLink(destination: Dessert()) {
                Text("Hit Enter, then click here!")
            }
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Beverage()
}
