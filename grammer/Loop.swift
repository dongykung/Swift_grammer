//
//  Loop.swift
//  grammer
//
//  Created by 김동경 on 2024/01/08.
//

import SwiftUI

struct Loop: View {
    let friendNames : [String] = ["dongkyung","lisa","tom","olive","paul"]
    var body: some View {
        VStack{
        
            ForEach(friendNames,id: \.self){ item in
                Text(item)
            }
        }
    }
}

#Preview {
    Loop()
}
