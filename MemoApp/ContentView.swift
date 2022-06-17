//
//  ContentView.swift
//  MemoApp
//
//  Created by 최영재 on 2022/06/17.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Memo")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                
                Spacer()
                
                Button {
                    print("test")
                } label: {
                    Image(systemName: "plus.app")
                        .font(.largeTitle)
                }
            }
            .padding()
            
            NavigationView {
                Text("\(searchText)")
                    .searchable(text: $searchText)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
