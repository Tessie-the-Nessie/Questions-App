//
//  End.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

struct End: View {
    
    var name = (userData["name"])!
    var timeOfDay = (userData["timeOfDay"])!
    var style = (userData["style"])!
    var weather = (userData["weather"])!
    var place = (userData["place"])!
    var beverage = (userData["beverage"])!
    var dessert = (userData["dessert"])!
    var food = (userData["food"])!
    var type = (userData["type"])!
    var music = (userData["music"])
    
    var body: some View {
        VStack {
            Text("""
\(name), would you like to go a
 \(style) \(type)
 at the \(weather) day?

We could listen to \(music) while noshing on
\(food), drinking \(beverage).

Aftwards we could find a \(style) cafe and eat \(dessert)....

What say you?
"""
)
            
//(userData["timeOfDay"]
//(userData["style"]
//(userData["weather"]
//(userData["place"]
//(userData["beverage"]
//(userData["dessert"]
//(userData["food"]
//(userData["type"]
//(userData["music"]

        }
        .padding(.all)
    }
}

#Preview {
    End()
}
