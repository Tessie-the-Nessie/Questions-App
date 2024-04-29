//
//  Style.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

struct Style: View {
    
    @State var style = ""
    
    var body: some View {
        VStack {
            Text("Fancy or Cozy?")
            
            TextField("\(String(describing: userData["name"])): How do you see yourself?", text: $style)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
                .onSubmit() {
                    userData["style"] = style //enter user inpout for one key
                }
            
            NavigationLink(destination: Weather()) {
                Text("Next Question")
            }
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
#Preview {
    Style()
}
