//
//  ContentView.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

var userData = [String:String]()//COULDN't pass things through under struct

    

struct ContentView: View {
    //set up needed user input variables - will have to pass these from appropriate UI to the next, building as we go
    @State var name = ""
    var textTitleName = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) { //passing variables between nav links is cumbersome - after a lot of trial and error, I remembered dictionaries... :)
                
                Text("Hi!")
                
                Text("May I ask your name?")
                TextField("Type your name here:", text: $name)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .onSubmit() {
                        userData["name"] = name //enter user input for one key
                    }
                
                NavigationLink(destination: Time()) {
                    Text("Hit Enter, then click here!")
                }
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
    
}
#Preview {
    ContentView()
}
