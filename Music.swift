//
//  Music.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

struct Music: View {
    
    @State var music = ""
    
    var body: some View {
        
        
        VStack {
            Text("What music do you find relaxing?")
            
            TextField("What do you like to listen to?", text: $music)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
                .onSubmit() {
                    userData["music"] = music //enter user input for one key
                }
            
            NavigationLink(destination: Jump()) {
                Text("Hit Enter, then click here!")
            }
            
        }
        .padding(.all)
    }
}

#Preview {
    Music()
}
