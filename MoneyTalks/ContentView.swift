//
//  ContentView.swift
//  MoneyTalks
//
//  Created by David M. Galvan on 5/9/23.
//

import SwiftUI

struct ContentView: View {
    let gradient = LinearGradient(colors: [Color.black,Color.green],
                                  startPoint: .top, endPoint: .bottom)
    var body: some View {
        NavigationStack {
            ZStack {
                gradient
                    .opacity(0.25)
                    .ignoresSafeArea()
                
                VStack {

                    Text("$20")
                        .font(.system(size: 80))
                        .frame(width: 5000)
                        .foregroundColor(.green)
                }
                .navigationTitle("Home")
                .font(.title2)
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
} 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
