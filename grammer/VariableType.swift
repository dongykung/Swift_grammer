//
//  VariableType.swift
//  grammer
//
//  Created by 김동경 on 2024/01/04.
//

import SwiftUI

struct VariableType: View {
    var name : String = "동경"
    var age : Int = 26
    var height : Float = 177.8
    var weight : Double = 70.6
    var havepet : Bool = false

    var body: some View {
        VStack{
            Text(name)
            Text("\(age)")
            Text(height.description)
            Text(weight.description)
            Text(havepet.description)
        }
    }
}
#Preview {
    VariableType()
}
