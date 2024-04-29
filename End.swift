//
//  End.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/28/24.
//

import SwiftUI

struct End: View {
    

    
    var body: some View {
        VStack {
            Text("""
\(String(describing: userData["name"])), would you like to go a
 \(String(describing: userData["style"])) \(String(describing: userData["type"]))
 at the \(String(describing: userData["place"])) on a \(String(describing: userData["weather"])) day?

We could listen to \(String(describing: userData["music"])) while noshing on
\(String(describing: userData["food"])), drinking \(String(describing: userData["beverage']"]))

Aftwards we could find a \(String(describing: userData["style"])) cafe and eat \(String(describing: userData["dessert"]))....

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
    }
}

#Preview {
    End()
}
