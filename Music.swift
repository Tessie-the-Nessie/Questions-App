//
//  Music.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

struct Music: View {
    
    @State var music = ""
    var textTitleMusic = ""
    var body: some View {
        
        
        VStack {
            Text("What music do you find relaxing?")
            
            TextField("Relaxing Music:", text: $music)
                .multilineTextAlignment(.center)
                .font(.title)
                .onSubmit() {
                    userData["music"] = music //enter user inpout for one key
                }
            Text(textTitleMusic)
                NavigationLink(destination: End()) {
                    Text("Click me and see!")
                }
            
        }
        .padding(.all)
    }
}

#Preview {
    Music()
}
