//
//  MyCollections.swift
//  grammer
//
//  Created by 김동경 on 2024/01/04.
//

import SwiftUI

struct MyCollections: View {
    var foods : [String] = ["eggs","bananas","beans"]
    var jazzs: Set<String> = ["bibidudu","ladtop","dididudu"]
    var hiphop : Set<String> = ["tiger","ladtop","bewhy"]
    var koEnDict = ["사과":"Apple","바나나":"banana"]
    
    var body: some View {
        VStack{
            Text(jazzs.intersection(hiphop).description)
            Text(koEnDict["사과"]!)
            Text(koEnDict["바나나"]!)
        }
    }
}

#Preview {
    MyCollections()
}
