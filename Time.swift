import SwiftUI

struct Time: View {
    @State var timeOfDay = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Best time of Day: Morning - Afternoon - Evening - Night?")
            
            TextField("What's your preference?", text: $timeOfDay)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
                .onSubmit() {
                    userData["timeOfDay"] = timeOfDay //enter user inpout for one key
                }
            
            NavigationLink(destination: Style()) {
                Text("Hit Enter, then click here!")
            }
        }
        .padding(.all)
    }
}

#Preview {
    Time()
}
