//
//  Food.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

struct Food: View {
    
    @State var food = ""
    
    var body: some View {
        VStack {
            Text("""
What strikes your fancy:
+ Crackers and artisan cheese
+ Finger Sandwiches
""")
            
            
            TextField("What's your favorite dessert?", text: $food)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
                .onSubmit() {
                    userData["food"] = food //enter user inpout for one key
                }
            
            NavigationLink(destination: Type()) {
                Text("Next Question")
            }
            
        }
        .padding(.all)
    }
}

#Preview {
    Food()
}
