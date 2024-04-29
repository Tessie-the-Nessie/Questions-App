//
//  Weather.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

struct Weather: View {
    
    @State var weather = ""
    var name = (userData["name"])!
    
    var body: some View {
        VStack {
            Text("""
//\(String(describing: userData["name"])), are you a rainy day lover?
\(name), are you a rainy day lover?
Sunshine forever?  Foggy?
Maybe, Cloudy with a Chance of Meatballs?
""")
            
            TextField("How do you like your skies?", text: $weather)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
                .onSubmit() {
                    userData["weather"] = weather //enter user inpout for one key
                }
            
            NavigationLink(destination: Place()) {
                Text("Next Question")
            }
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Weather()
}
