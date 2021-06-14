//
//  ContentView.swift
//  Project-5-Word-Scramble-SwiftUI
//
//  Created by Baris Karalar on 14.06.2021.
//

import SwiftUI

struct ContentView: View {


    var body: some View {

        VStack {
            List(people, id: \.self) {
                Text($0)
            }
            
            //When we want to mix dynamic and static rows
            List {
                ForEach(people, id: \.self) {
                    Text($0)
                }
            }
        }
        
        
        
        
    }
}

//2

//struct ContentView: View {
//
//    let people = ["Finn", "Leia", "Luke", "Rey"]
//
//    var body: some View {
//
//        VStack {
//            List(people, id: \.self) {
//                Text($0)
//            }
//
//            //When we want to mix dynamic and static rows
//            List {
//                ForEach(people, id: \.self) {
//                    Text($0)
//                }
//            }
//        }
//    }
//}

//1

//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//                List {
//                    Section(header: Text("Section 1")) {
//                        Text("Hello World")
//                        Text("Hello World")
//                        Text("Hello World")
//                    }
//
//                    Section(header: Text("Section 2")) {
//                        ForEach(0..<5) {
//                            Text("\($0)")
//                        }
//                    }
//
//
//                }
//                .listStyle(GroupedListStyle())
//
//                List(0..<5) {
//                    Text("\($0)")
//                }
//                .listStyle(GroupedListStyle())
//
//            }
//
//
//        }
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
