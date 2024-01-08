//
//  ContentView.swift
//  grammer
//
//  Created by 김동경 on 2024/01/04.
//

import SwiftUI

struct ContentView: View {
    private var name : String = "리이오"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(name)님 안녕하세요")
            Text(name)
            Text(name)
            Text(name)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
