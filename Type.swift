//
//  Type.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

struct Type: View {
    
    @State var type = ""
    
    var body: some View {
        VStack {
            Text("Just a few more questions...")
           
            TextField("Are a picnic or table type of person?", text: $type)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
                .onSubmit() {
                    userData["type"] = type //enter user inpout for one key
                }
            
            NavigationLink(destination: Music()) {
                Text("Hit Enter, then click here!")
            }
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Type()
}
