//
//  ContentView.swift
//  MoneyTalks
//
//  Created by David M. Galvan on 5/9/23.
//

import SwiftUI

struct ContentView: View {
    let background = [Color.black, Color.black, Color.black]
    let navigationBar =  [Color.green, Color.blue]
    let gradient = LinearGradient(colors:[Color.black,Color.green],startPoint:.top,endPoint:.bottom)
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors:navigationBar,startPoint:.top,endPoint:.bottom)
                    .opacity(0.9)
                    .ignoresSafeArea()
                VStack {
                    Divider()
                        .background(.ultraThinMaterial)
                    LinearGradient(colors:background,startPoint: .top,endPoint: .bottom)
                        .ignoresSafeArea()
                        .opacity(0.9)
//                        .background(LinearGradient(colors:navigationBar ,startPoint:.top,endPoint:.bottomTrailing)
 //                                          )
                }
                Text("$20")
                                        .font(.system(size: 80))
                                        .frame(width: 5000)
                                        .foregroundColor(.green)
                .navigationTitle("Home")
                .font(Font.headline.weight(.black))
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
