//
//  Half.swift
//  grammer
//
//  Created by 김동경 on 2024/01/08.
//

import SwiftUI

struct Half: View {
    var name : String = "dongkyung"
    var age : Int = 20
    var names : [String] = ["dongkyung","john","paul","terry"]
    var body: some View {
        VStack{
            List {
                ForEach(names,id: \.self){name in
                    if name=="dongkyung"{
                        var welcome = sayHi(to: name)
                        Text(welcome)
                    }else{
                        Text(name)
                    }
                }
            }
        }
    }
    func sayHi(to name:String) -> String{
        return "welcome \(name)"
    }
}

#Preview {
    Half()
}
