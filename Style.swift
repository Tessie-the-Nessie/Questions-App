//
//  Style.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

struct Style: View {
    
    @State var style = ""
    var name = (userData["name"])!
    
    var body: some View {
        VStack {
            Text("Fancy or Cozy?")
            
            //having trouble cleaning up text inside the TextField - want to retrieve data directly from directory but I can't do so without importing the Optional tag
            
            TextField("\(name): How do you see yourself?", text: $style)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
                .onSubmit() {
                    userData["style"] = style //enter user inpout for one key
                }
            
            NavigationLink(destination: Weather()) {
                Text("Hit Enter, then click here!")
            }
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
#Preview {
    Style()
}
