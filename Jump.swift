//
//  Jump.swift
//  Questions App
//
//  Created by Tessa Delsener on 4/29/24.
//

import SwiftUI

struct Jump: View {
    var body: some View {

        VStack {
            NavigationLink(destination: End()) {
                Text("Alright...  Ready?")
            }
        }
        
    }
}

#Preview {
    Jump()
}
