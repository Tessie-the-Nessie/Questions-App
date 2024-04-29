//
//  Place.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

struct Place: View {

    @State var place = ""
    
    var body: some View {
        VStack {
            Text("Beach - City Park - Desert - Mountain")
            
            TextField("Where's your go to place to relax?", text: $place)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
                .onSubmit() {
                    userData["place"] = place //enter user inpout for one key
                }
            
            NavigationLink(destination: Beverage()) {
                Text("Next Question")
            }
            
        }
        .padding(.all)
    }
}

#Preview {
    Place()
}
