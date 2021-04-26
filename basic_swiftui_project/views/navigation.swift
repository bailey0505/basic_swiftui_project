//
//  navigation.swift
//  basic_swiftui_project
//
//  Created by Bailey Rotellini on 4/26/21.
//

import SwiftUI

struct navigation: View {
    var body: some View {
        ZStack{
            VStack(spacing: 0) {
                NavigationView {
                    List{
                        NavigationLink(destination: part1()) {
                            Text("Go to Part 1") 
                            }
                        NavigationLink(destination: part2()) {
                            Text("Go to Part 2")
                            }
                    }.navigationBarTitle("Assignment 1")
                }
            }
        }
    }
}

struct navigation_Previews: PreviewProvider {
    static var previews: some View {
        navigation()
    }
}
