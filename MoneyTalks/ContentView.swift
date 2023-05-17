//
//  ContentView.swift
//  MoneyTalks
//
//  Created by David M. Galvan on 5/9/23.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State var isLoggedIn = false
    let background = [Color.black, Color.black, Color.black]
    let navigationBar =  [Color.green, Color.blue]
    let gradient = LinearGradient(colors:[Color.black,Color.green],startPoint:.top,endPoint:.bottom)
    
    var body: some View {
        NavigationStack {
            if isLoggedIn {
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
            } else {
                LoginView(isLoggedIn: $isLoggedIn)
            }
        }
        .onAppear {
            Auth.auth().addStateDidChangeListener { auth, user in
                isLoggedIn = user != nil
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    var body: some View {
        VStack {
            Text("Please log in")
            Button("Log In") {
                Auth.auth().signInAnonymously { result, error in
                    isLoggedIn = result?.user != nil
                }
            }
        }
    }
}
