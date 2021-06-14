//
//  ContentView.swift
//  Project-5-Word-Scramble-SwiftUI
//
//  Created by Baris Karalar on 14.06.2021.
//

import SwiftUI


struct ContentView: View {

    @State private var usedWords = [String]()
    @State private var rootWord = "sdsds"
    @State private var newWord = ""
    
    var body: some View {

        NavigationView {
            VStack {
                TextField("Enter your word", text: $newWord, onCommit: addNewWord)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .autocapitalization(.none)
                
                List(usedWords, id: \.self) {
                    Image(systemName: "\($0.count).circle")
                    Text($0)
                }
                
            }
            .navigationBarTitle(rootWord)
        }
     

    }
    
    
    func addNewWord() {
        // lowercase and trim the word, to make sure we don't add duplicate words with case differences
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        // exit if the remaining string is empty
        guard answer.count > 0 else {
            return
        }
        
        // extra validation to come
        usedWords.insert(answer, at: 0)
        newWord = ""
    }
}



////Working with strings
//
//struct ContentView: View {
//
//
//    var body: some View {
//
//        let input = "a b c"
//        let letters = input.components(separatedBy: " ")
//        print(letters)
//
//        let input2 = """
//            a
//            b
//            c
//            """
//        let letters2 = input2.components(separatedBy: "\n")
//        print(letters2)
//
//
//        let letter = letters.randomElement()
//
//        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
//        print(trimmed)
//
//        // Checking a string for misspelled words
//        let word = "swift"
//        let checker = UITextChecker()
//
//        let range = NSRange(location: 0, length: word.utf16.count)
//
//        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
//        let allGood = misspelledRange.location == NSNotFound
//        print(allGood)
//
//        return Text("Hello world")
//    }
//}


////Loading resources from your app bundle
//
//struct ContentView: View {
//
//
//    var body: some View {
//
//        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
//            // we found the file in our bundle!
//
//            if let fileCOntents = try? String(contentsOf: fileURL) {
//                // we loaded the file into a string!
//            }
//        }
//
//
//
//        Text("Hello world")
//    }
//}

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
