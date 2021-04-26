//
//  part1.swift
//  basic_swiftui_project
//
//  Created by Bailey Rotellini on 4/26/21.
//

import SwiftUI

struct part1: View {
    @State private var selection = 1
    @State private var paragraph = ""
    var body: some View {
        VStack(spacing: 0) {
            Text("Reading User input and returning Value")
            .multilineTextAlignment(.center)
            .font(.body)
            .padding()
            Spacer()
            
            Text("Picker One to learn")
            .font(Font.headline.weight(.bold))
            
            Picker(selection: $selection, label: Text("Select An option")) {
                Text("Wine").tag(1)
                Text("Beer").tag(2)
                Text("Whiskey").tag(3)
                
            }
            Button(action: {
               
                if(self.selection == 1){
                    self.paragraph = "Wine is a great beverage"
                }else if(self.selection == 2){
                    self.paragraph = "Beer is a more superior beverage to wine"
                }else{
                    self.paragraph = "Whiskey is the ultimate beverage"
                }
            }){
                Text("Submit")
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom))
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(10)
                    .cornerRadius(40)
            }
            
            
            Text(self.paragraph)
        }
        
        .offset(y: -50)
        .frame(minWidth: 0, maxHeight: 400, alignment: .topLeading)

    }
}


struct part1_Previews: PreviewProvider {
    static var previews: some View {
        part1()
    }
}


