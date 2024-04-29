//
//  Dessert.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

struct Dessert: View {
    
    @State var dessert = ""
    
    var body: some View {
        VStack {
            Text("Sweet tooth?")
 
            
            TextField("What's your favorite dessert?", text: $dessert)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
                .onSubmit() {
                    userData["dessert"] = dessert //enter user inpout for one key
                }
            
            NavigationLink(destination: Food()) {
                Text("Hit Enter, then click here!")
            }
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Dessert()
}
